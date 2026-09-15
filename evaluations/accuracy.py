import subprocess
import os
import time
import collections
import numpy as np
import pandas as pd
import sounddevice as sd
from sklearn.metrics import classification_report, confusion_matrix
import matplotlib.pyplot as plt
import seaborn as sns
import tensorflow as tf

SAMPLE_RATE = 16000
WINDOW_DURATION = 1.0  
STEP_DURATION = 0.1    

WINDOW_SAMPLES = int(SAMPLE_RATE * WINDOW_DURATION)
STEP_SAMPLES = int(SAMPLE_RATE * STEP_DURATION)

TARGET_WORDS = ['yes', 'no', 'on', 'off', 'stop']
LABELS = ['silence', 'unknown'] + TARGET_WORDS

HISTORY_LEN = 5             
UNKNOWN_LOGIT_OFFSET = 1.5

prediction_history = []

audio_buffer = collections.deque(maxlen=WINDOW_SAMPLES)
audio_buffer.extend(np.zeros(WINDOW_SAMPLES, dtype=np.float32))

def clear_terminal():
    subprocess.run('cls' if os.name == 'nt' else 'clear', shell=True)

def audio_callback(indata, frames, time_info, status):
    audio_buffer.extend(indata[:, 0])



class AudioPreprocess(tf.keras.layers.Layer):
    def __init__(self, sample_rate=16000, n_mfcc=40, n_fft=400, hop_length=160, n_mels=40, **kwargs):
        super().__init__(**kwargs)
        self.sample_rate = sample_rate
        self.n_mfcc = n_mfcc
        self.n_fft = n_fft
        self.hop_length = hop_length
        self.n_mels = n_mels

    def build(self, input_shape):
        num_spectrogram_bins = self.n_fft // 2 + 1
        self.linear_to_mel_weight_matrix = tf.signal.linear_to_mel_weight_matrix(
            num_mel_bins=self.n_mels,
            num_spectrogram_bins=num_spectrogram_bins,
            sample_rate=self.sample_rate,
            lower_edge_hertz=20.0,
            upper_edge_hertz=4000.0
        )
        super().build(input_shape)

    def call(self, waveforms):
        pad_amount = self.n_fft // 2
        padded_waveforms = tf.pad(waveforms, [[0, 0], [pad_amount, pad_amount]], mode='REFLECT')

        stfts = tf.signal.stft(
            padded_waveforms,
            frame_length=self.n_fft,
            frame_step=self.hop_length,
            fft_length=self.n_fft,
            pad_end=False
        )

        spectrograms = tf.abs(stfts)
        mel_spectrograms = tf.matmul(spectrograms, self.linear_to_mel_weight_matrix)
        log_mel_spectrograms = tf.math.log(mel_spectrograms + 1e-6)

        mfccs = tf.signal.mfccs_from_log_mel_spectrograms(log_mel_spectrograms)[..., :self.n_mfcc]
        mfccs = tf.transpose(mfccs, perm=[0, 2, 1])
        
        return tf.expand_dims(mfccs, axis=-1)

preprocess = AudioPreprocess()


model = tf.keras.models.load_model("model.h5")



def run_single_test(duration_seconds, min_target_frames):
    global prediction_history

    prediction_history = []
    detected_labels = []

    count_by_words = {}
    valid_words = {}

    start_time = time.time()

    with sd.InputStream(samplerate=SAMPLE_RATE, channels=1, callback=audio_callback, blocksize=STEP_SAMPLES):
        while (time.time() - start_time) < duration_seconds:
            time.sleep(STEP_DURATION)

            chunk = np.array(audio_buffer, dtype=np.float32)

            waveform_tensor = tf.convert_to_tensor([chunk], dtype=tf.float32)
            mfcc_input = preprocess(waveform_tensor)

            logits = model(mfcc_input, training=False).numpy()[0].astype(np.float32)

            logits[1] -= UNKNOWN_LOGIT_OFFSET
            logits_shifted = logits - np.max(logits)
            probabilities = np.exp(logits_shifted) / np.sum(np.exp(logits_shifted))

            prediction_history.append(probabilities)
            if len(prediction_history) > HISTORY_LEN:
                prediction_history.pop(0)

            probabilities = np.mean(prediction_history, axis=0)

            predicted_index = int(np.argmax(probabilities))
            predicted_label = LABELS[predicted_index]
            detected_labels.append(predicted_label)

    if not detected_labels:
        return 'silence'

    for label in detected_labels:
        if label in count_by_words:
            count_by_words[label] += 1
        else:
            count_by_words[label] = 1

    for label, count in count_by_words.items():
        if label in TARGET_WORDS and count >= min_target_frames:
            valid_words[label] = count

    if valid_words:
        final_pred = max(valid_words, key=valid_words.get)
    else:
        final_pred = max(count_by_words, key=count_by_words.get)

    return final_pred



def start_eval(samples_per_class, countdown_seconds, between_class_pause):
    unknown_words = ['light', 'alarm', 'fan', 'ac', 'room', 'dog', 'cat', 'svjetlo', 'klima', 'start']

    total_classes = len(LABELS)

    unknown_prompts = []
    label_true = []
    label_prediction = []

    for word in unknown_words:
            for _ in range(2):
                unknown_prompts.append(word)

    for class_index, target in enumerate(LABELS, 1):
        if class_index > 1:
            for pause in range(between_class_pause, 0, -1):
                clear_terminal()
                print(f"{target}")
                print(f"\n{pause}")
                time.sleep(1.0)

        if target == 'unknown':
            num_samples = len(unknown_prompts)
        else:
            num_samples = samples_per_class

        for i in range(num_samples):
            if target == 'silence':
                msg = "Riječ: silence"
                display_target = "silence"
            elif target == 'unknown':
                current_word = unknown_prompts[i]
                rep = (i % 2) + 1
                msg = f"Riječ: '{current_word}' ({rep}/2)"
                display_target = f"unknown: '{current_word}'"
            else:
                msg = f"{target}"
                display_target = target

            for countdown in range(countdown_seconds, 0, -1):
                clear_terminal()
                print(f"Klasa {class_index}/{total_classes}: {target}")
                print(f"Ponavljanje: {i+1}/{num_samples}\n")

                if label_true:
                    last_true = label_true[-1]
                    last_pred = label_prediction[-1]
                    status_str = "True" if last_true == last_pred else "False"
                    
                    print(f"Prepoznata: {last_pred} - {status_str}\n")

                print(f"{msg}")
                print(f"Snimanje za: {countdown}")
                time.sleep(1.0)

            clear_terminal()
            print(f"Klasa {class_index}/{total_classes}: {display_target}")
            print(f"Ponavljanje: {i+1}/{num_samples}")
            print("\nSnimanje")

            predicted = run_single_test(duration_seconds=2.0, min_target_frames=3)

            label_true.append(target)
            label_prediction.append(predicted)

            clear_terminal()
            print(f"Stvarna: {target}\n")
            print(f"Prepoznata: {predicted}")
            time.sleep(1.2)

    clear_terminal()
    matrica = confusion_matrix(label_true, label_prediction, labels=LABELS)

    rows = []
    columns = []
    for label in LABELS:
        rows.append(f"Točno: {label}")
        columns.append(f"Predviđeno: {label}")
        
    matrica_view = pd.DataFrame(matrica, index=rows, columns=columns)
    print("\n")
    print(matrica_view)

    report = classification_report(label_true, label_prediction, labels=LABELS, target_names=LABELS, digits=3, zero_division=0)
    print("\n")
    print(report)


    txt_filename = "rezultati.txt"
    with open(txt_filename, "w", encoding="utf-8") as f:
        f.write("Matrica zabune\n")
        f.write(matrica_view.to_string() + "\n\n")
        f.write("Metrike klasifikacije\n")
        f.write(report + "\n\n")

    img_filename = "matrica_zabune.png"
    plt.figure(figsize=(9, 7))
    sns.heatmap(
        matrica, 
        annot=True, 
        fmt='d', 
        cmap='Blues', 
        xticklabels=LABELS, 
        yticklabels=LABELS,
        cbar=True,
        linewidths=0.5
    )
    plt.xlabel('Predviđena klasa', fontsize=12)
    plt.ylabel('Stvarna klasa', fontsize=12)
    plt.xticks(rotation=45)
    plt.yticks(rotation=0)
    plt.tight_layout()
    plt.savefig(img_filename, dpi=300)
    plt.close()

    return label_true, label_prediction, matrica_view

if __name__ == "__main__":
    start_eval(
        samples_per_class=20, 
        countdown_seconds=2, 
        between_class_pause=2
    )