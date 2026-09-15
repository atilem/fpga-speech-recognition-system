import os
import numpy as np
import tensorflow as tf
from scipy.signal import stft
from scipy.fftpack import dct

model = tf.keras.models.load_model('model.h5')

SAMPLE_RATE = 16000
N_MFCC = 40
N_FFT = 400
N_MELS = 40
HOP_LENGTH = 160
N_FRAMES = 101
N_SAMPLES = 25  

def create_mel_weight_matrix(num_mel_filter, num_spectrogram_coeffs, sample_rate, low_freq, high_freq):
    def hz_to_mel(hz):
        return 2595.0 * np.log10(1.0 + hz / 700.0)

    def mel_to_hz(mel):
        return 700.0 * (10.0 ** (mel / 2595.0) - 1.0)
    
    low_mel = hz_to_mel(low_freq)
    higher_mel = hz_to_mel(high_freq)
    
    mel_frequencies = np.linspace(low_mel, higher_mel, num_mel_filter + 2)
    frequency_hz = mel_to_hz(mel_frequencies)

    frequency_ratio = (num_spectrogram_coeffs * 2) * frequency_hz / sample_rate
    frequency_idx = np.floor(frequency_ratio).astype(int)
    
    mel_filter_weights = np.zeros((num_spectrogram_coeffs, num_mel_filter))

    for i in range(num_mel_filter):
        start = frequency_idx[i]
        center = frequency_idx[i + 1]
        end = frequency_idx[i + 2]

        for j in range(start, center):
            if center != start:
                mel_filter_weights[j, i] = (j - start) / (center - start)

        for j in range(center, end):
            if end != center:
                mel_filter_weights[j, i] = (end - j) / (end - center)

    return mel_filter_weights

MEL_FILTER_WEIGHTS = create_mel_weight_matrix(
    num_mel_filter=N_MELS,
    num_spectrogram_coeffs=(N_FFT // 2 + 1),
    sample_rate=SAMPLE_RATE,
    low_freq=20.0,
    high_freq=4000.0
)

HANN_WINDOW = np.hanning(N_FFT)
HANN_SUM = np.sum(HANN_WINDOW)

def extract_mfcc(signal):
    signal = np.asarray(signal, dtype=np.float32)
    padding = N_FFT // 2
    padded_signal = np.pad(signal, (padding, padding), mode='reflect')

    f, t, Zxx = stft(
        padded_signal,
        fs=SAMPLE_RATE,
        window='hann',
        nperseg=N_FFT,
        noverlap=N_FFT - HOP_LENGTH,
        boundary=None,
        padded=False
    )
    
    amplitudes = np.abs(Zxx)
    spectrogram = amplitudes * HANN_SUM
    spectrogram = spectrogram.T
    
    mel_spectrogram = np.dot(spectrogram, MEL_FILTER_WEIGHTS)
    log_mel_spectrogram = np.log(mel_spectrogram + 1e-6)

    mfcc = dct(log_mel_spectrogram, type=2, axis=-1, norm='ortho')
    mfcc = mfcc[..., :N_MFCC]
  
    mfcc = mfcc.T
    mfcc = np.expand_dims(mfcc, axis=0)
    mfcc = np.expand_dims(mfcc, axis=-1)

    return mfcc.astype(np.float32)

inputs_list = []
t_axis = np.linspace(0, 1, SAMPLE_RATE, endpoint=False)

np.random.seed(42)

inputs_list = []
inputs_list.append(extract_mfcc(np.zeros(SAMPLE_RATE, dtype=np.float32)))

inputs_list = []
inputs_list.append(extract_mfcc(np.ones(SAMPLE_RATE, dtype=np.float32)))
inputs_list.append(extract_mfcc(-np.ones(SAMPLE_RATE, dtype=np.float32)))

inputs_list = []
inputs_list.append(extract_mfcc(np.sin(2 * np.pi * 100 * t_axis)))

inputs_list = []
inputs_list.append(extract_mfcc(np.sin(2 * np.pi * 3500 * t_axis)))

impulse_signal = np.zeros(SAMPLE_RATE, dtype=np.float32)
impulse_signal[SAMPLE_RATE // 2] = 1.0
inputs_list.append(extract_mfcc(impulse_signal))

for i in range(len(inputs_list), N_SAMPLES):
    scale_factor = np.random.uniform(0.001, 1.0)
    dummy_audio = np.random.uniform(-scale_factor, scale_factor, size=(SAMPLE_RATE,)).astype(np.float32)
    mfcc_features = extract_mfcc(dummy_audio)
    inputs_list.append(mfcc_features)

inputs = np.concatenate(inputs_list, axis=0)

keras_predictions = model.predict(inputs)

output_dir = 'C:\\Users\\Melita\\Desktop\\dodov_mod\\final_hls\\tb_data'

np.savetxt(f'{output_dir}/tb_input_features.dat', inputs.reshape(inputs.shape[0], -1), fmt='%.6f')
np.savetxt(f'{output_dir}/tb_output_predictions.dat', keras_predictions, fmt='%.6f')