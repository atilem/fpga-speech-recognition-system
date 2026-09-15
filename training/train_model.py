import os
import random
import glob
import numpy as np
import tensorflow as tf
from tensorflow.keras import layers, models

gpus = tf.config.list_physical_devices('GPU')

if gpus:
    try:
        for gpu in gpus:
            tf.config.experimental.set_memory_growth(gpu, True)
    except RuntimeError as e:
        print(f"{e}")
else:
    print("Na CPU se izvrsava")

BATCH_SIZE = 32
EPOCHS = 15           
LEARNING_RATE = 0.001

SAMPLE_RATE = 16000
N_MFCC = 40
N_FFT = 400
N_MELS = 40
HOP_LENGTH = 160


TARGET_WORDS = ['yes', 'no', 'on', 'off', 'stop']
LABELS = ['silence', 'unknown'] + TARGET_WORDS

label_to_idx = {}
for i in range(len(LABELS)):
    label = LABELS[i]
    label_to_idx[label] = i

DATASET_PATH = "./data/SpeechCommands/speech_commands_v0.02"

def load_dataset_split():
    val_file = os.path.join(DATASET_PATH, "validation_list.txt")
    test_file = os.path.join(DATASET_PATH, "testing_list.txt")
    
    val_list, test_list = set(), set()

    with open(val_file) as f:
        val_list = set(line.strip() for line in f)
        
    with open(test_file) as f:
        test_list = set(line.strip() for line in f)

    train_files, val_files = [], []

    all_wavs = glob.glob(os.path.join(DATASET_PATH, "*", "*.wav"))

    
    for filepath in all_wavs:
        rel_path = os.path.relpath(filepath, DATASET_PATH)

        if "_background_noise_" in rel_path:
            continue

        if rel_path in val_list:
            val_files.append(filepath)

        elif rel_path not in test_list:
            train_files.append(filepath)

    return train_files, val_files

train_filepaths, val_filepaths = load_dataset_split()

class AudioPreprocess(tf.keras.layers.Layer):
    def __init__(self, sample_rate=SAMPLE_RATE, n_mfcc=N_MFCC, n_fft=N_FFT, hop_length=HOP_LENGTH, n_mels=N_MELS, **kwargs):
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

    def call(self, signals):
        pad_amount = self.n_fft // 2
        padded_signals = tf.pad(signals, [[0, 0], [pad_amount, pad_amount]], mode='REFLECT')

        stfts = tf.signal.stft(
            padded_signals,
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
        mfccs = tf.expand_dims(mfccs, axis=-1)
            
        return mfccs

class BackgroundNoise:
    def __init__(self, noise_dir=os.path.join(DATASET_PATH, "_background_noise_")):
        self.noise_samples = []

        for file in os.listdir(noise_dir):
            if file.endswith('.wav'):
                filepath = os.path.join(noise_dir, file)
                audio_raw = tf.io.read_file(filepath)
                signals, _ = tf.audio.decode_wav(audio_raw)
                self.noise_samples.append(tf.squeeze(signals, axis=-1))
       

    def get_silence_sample(self):
        noise_wave = random.choice(self.noise_samples)
        noise_shape = tf.shape(noise_wave)
        noise_length = noise_shape[0]

        max_start = noise_length - SAMPLE_RATE
        start = random.randint(0, max(0, int(max_start)))
        end = start + SAMPLE_RATE
        clip = noise_wave[start:end]

        return clip * random.uniform(0.01, 0.2)

    def apply_noise_and_shift(self, signal):
        shift = random.randint(-1600, 1600)

        if shift > 0:
            signal = tf.pad(signal[shift:], [[0, shift]])
        elif shift < 0:
            signal = tf.pad(signal[:shift], [[-shift, 0]])

        if self.noise_samples and random.random() < 0.5:
            noise_wave = random.choice(self.noise_samples)
            noise_shape = tf.shape(noise_wave)
            noise_length = noise_shape[0]

            max_start = noise_length - SAMPLE_RATE
            start = random.randint(0, max(0, int(max_start)))
            end = start + SAMPLE_RATE
            clip = noise_wave[start:end]

            signal = signal + clip * random.uniform(0.01, 0.10)
        return signal

noise_handler = BackgroundNoise()

class SpeechCommandsDataGenerator(tf.keras.utils.Sequence):
    def __init__(self, filepaths, batch_size=BATCH_SIZE, shuffle=True, is_validation=False, **kwargs):
        super().__init__(**kwargs)
        self.filepaths = filepaths
        self.batch_size = batch_size
        self.shuffle = shuffle
        self.is_validation = is_validation
        self.preprocess_layer = AudioPreprocess()
        self.on_epoch_end()

    def __len__(self):
        return int(np.floor(len(self.filepaths) / self.batch_size))

    def on_epoch_end(self):
        self.indexes = np.arange(len(self.filepaths))
        if self.shuffle:
            np.random.shuffle(self.indexes)

    def __getitem__(self, index):
        start = index * self.batch_size
        end = (index + 1) * self.batch_size

        batch_indexes = self.indexes[start:end]
        batch_files = []

        for i in batch_indexes:
            batch_files.append(self.filepaths[i])       

        signals = []
        targets = []

        num_silence = 8

        for _ in range(num_silence):
            signals.append(noise_handler.get_silence_sample())
            targets.append(label_to_idx['silence'])

        for filepath in batch_files[:self.batch_size - num_silence]:
            folder_name = os.path.basename(os.path.dirname(filepath))

            audio_raw = tf.io.read_file(filepath)
            signal, _ = tf.audio.decode_wav(audio_raw, desired_channels=1)
            signal = tf.squeeze(signal, axis=-1)

            wave_len = tf.shape(signal)[0]
            if wave_len < SAMPLE_RATE:
                signal = tf.pad(signal, [[0, SAMPLE_RATE - wave_len]])
            elif wave_len > SAMPLE_RATE:
                signal = signal[:SAMPLE_RATE]

            if folder_name in TARGET_WORDS:
                target_idx = label_to_idx[folder_name]
            else:
                target_idx = label_to_idx['unknown']

            if not self.is_validation:
                signal = noise_handler.apply_noise_and_shift(signal)

            signals.append(signal)
            targets.append(target_idx)

        signals_tensor = tf.stack(signals)
        mfcc_batch = self.preprocess_layer(signals_tensor)
        targets_tensor = tf.convert_to_tensor(targets, dtype=tf.int32)

        return mfcc_batch, targets_tensor

def create_model(input_shape=(40, 101, 1), num_classes=len(LABELS)):
    inputs = layers.Input(shape=input_shape, name="mfcc_input")

    conv1 = layers.Conv2D(12, kernel_size=(3, 3), strides=(2, 2), padding='same')(inputs)
    batch1 = layers.BatchNormalization()(conv1)
    relu1 = layers.Activation('relu')(batch1)
    max_pool1 = layers.MaxPooling2D(pool_size=(2, 2))(relu1)

    conv2 = layers.Conv2D(18, kernel_size=(3, 3), padding='same')(max_pool1)
    batch2 = layers.BatchNormalization()(conv2)
    relu2 = layers.Activation('relu')(batch2)
    max_pool2 = layers.MaxPooling2D(pool_size=(2, 5), strides=(2, 5))(relu2)

    flatten = layers.Flatten()(max_pool2)
    dropout = layers.Dropout(0.2)(flatten)

    outputs = layers.Dense(num_classes, name="output")(dropout)

    model = models.Model(inputs=inputs, outputs=outputs, name="LightKWSModel")
    return model

model = create_model(input_shape=(40, 101, 1), num_classes=len(LABELS))

optimizer = tf.keras.optimizers.Adam(learning_rate=LEARNING_RATE)
model.compile(
    optimizer=optimizer,
    loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
    metrics=['accuracy']
)

class_weights = {
    label_to_idx['silence']: 1.0,
    label_to_idx['unknown']: 1.0,  
    label_to_idx['yes']: 1.0,
    label_to_idx['no']: 1.0,
    label_to_idx['on']: 1.0,
    label_to_idx['off']: 1.0,
    label_to_idx['stop']: 1.0
}

callbacks = [
    tf.keras.callbacks.ReduceLROnPlateau(monitor='val_loss', factor=0.5, patience=2, verbose=1),
    tf.keras.callbacks.EarlyStopping(monitor='val_loss', patience=6, restore_best_weights=True, verbose=1),
    tf.keras.callbacks.ModelCheckpoint('best_kws_model.keras', monitor='val_loss', save_best_only=True, mode='min', verbose=1)
]

train_generator = SpeechCommandsDataGenerator(train_filepaths, batch_size=BATCH_SIZE, shuffle=True, is_validation=False)
val_generator = SpeechCommandsDataGenerator(val_filepaths, batch_size=BATCH_SIZE, shuffle=False, is_validation=True)

history = model.fit(
    train_generator,
    validation_data=val_generator,
    epochs=EPOCHS,
    class_weight=class_weights,
    callbacks=callbacks
)

best_model = tf.keras.models.load_model('best_kws_model.keras')
best_model.save("model.keras")
best_model.save("model.h5")
