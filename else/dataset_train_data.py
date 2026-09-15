import os
import shutil
import random
import numpy as np

from scipy.io import wavfile

DATASET_PATH = "../data/SpeechCommands/speech_commands_v0.02"
TEST_FOLDER = "../test_audio"

BACKGROUND_NOISE_FOLDER = os.path.join(DATASET_PATH, "_background_noise_")
testing_list = os.path.join(DATASET_PATH, "testing_list.txt")

TARGET_WORDS = ['yes', 'no', 'on', 'off', 'stop']
LABELS = ['silence', 'unknown', 'yes', 'no', 'on', 'off', 'stop']
SAMPLE_RATE = 16000


test_files = []
with open(testing_list, "r") as file:
    for line in file:
        clean = line.strip()
        if clean:
            test_files.append(clean)

class_counts = {
    'yes': 0,
    'no': 0,
    'on': 0,
    'off': 0,
    'stop': 0,
    'unknown': 0,
    'silence': 0
}

copied = 0


for class_path in test_files:
    word = class_path.split("/")[0]

    source = os.path.join(DATASET_PATH, class_path)
    if not os.path.isfile(source):
        continue

    if word in TARGET_WORDS:
        label = word
    else:
        label = 'unknown'


    destination_folder = os.path.join(TEST_FOLDER, label)
    os.makedirs(destination_folder, exist_ok=True)
    destination = os.path.join(destination_folder, os.path.basename(class_path))


    if label == 'unknown':
        filename = (word + "_" + os.path.basename(class_path))
        destination = os.path.join(destination_folder, filename)

    shutil.copy2(source, destination)

    copied += 1
    class_counts[label] += 1


noise_files = []
for file in os.listdir(BACKGROUND_NOISE_FOLDER):
    if file.lower().endswith(".wav"):
        noise_files.append(file)


silence_folder = os.path.join(TEST_FOLDER, "silence")
os.makedirs(silence_folder, exist_ok=True)

counts = []
for word in TARGET_WORDS:
    counts.append(class_counts[word])

target_silence_count = min(counts)


for noise_filename in noise_files:
    noise_path = os.path.join(BACKGROUND_NOISE_FOLDER, noise_filename)

    sample_rate, noise = wavfile.read(noise_path)

    if sample_rate != SAMPLE_RATE:
        continue

    if noise.ndim > 1:
        noise = noise[:, 0]

    noise = noise.astype(
        'float32'
    )

    max_val = abs(noise).max()
    if max_val > 0:
        noise = noise / max_val

    if len(noise) < SAMPLE_RATE:
        continue

    max_start = (len(noise) - SAMPLE_RATE)

    for i in range(10000):
        if class_counts['silence'] >= target_silence_count:
            break

        start = random.randint(0, max_start)
        clip = noise[start:start + SAMPLE_RATE]
        amplitude = random.uniform(0.01, 0.2)
        clip = clip * amplitude

        output_filename = (f"silence_{class_counts['silence']:04d}.wav")
        output_path = os.path.join(silence_folder, output_filename)

        clip_int16 = (np.clip(clip, -1.0, 1.0)* 32767).astype(np.int16)

        wavfile.write(output_path, SAMPLE_RATE, clip_int16)

        class_counts['silence'] += 1

    if class_counts['silence'] >= target_silence_count:
        break

print("done")