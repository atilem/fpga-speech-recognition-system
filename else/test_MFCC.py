import numpy as np
from scipy.signal import stft
from scipy.fftpack import dct
import tensorflow as tf

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
    num_mel_filter=40,
    num_spectrogram_coeffs=(400 // 2 + 1),
    sample_rate=16000,
    low_freq=20.0,
    high_freq=4000.0
)

HANN_WINDOW = np.hanning(400)
HANN_SUM = np.sum(HANN_WINDOW)

def extract_mfcc_numpy(signal, sample_rate=16000, n_mfcc=40, n_fft=400, hop_length=160, n_mels=40):
    signal = np.asarray(signal, dtype=np.float32)
    padding = n_fft // 2
    padded_signal = np.pad(signal, (padding, padding), mode="reflect")

    f, t, Zxx = stft(
        padded_signal,
        fs=sample_rate,
        window="hann",
        nperseg=n_fft,
        noverlap=n_fft - hop_length,
        boundary=None,
        padded=False,
    )

    amplitudes = np.abs(Zxx)
    spectrogram = amplitudes * HANN_SUM
    spectrogram = spectrogram.T

    mel_spectrogram = np.dot(spectrogram, MEL_FILTER_WEIGHTS)
    log_mel_spectrogram = np.log(mel_spectrogram + 1e-6)

    mfcc = dct(log_mel_spectrogram, type=2, axis=-1, norm='ortho')
    mfcc = mfcc[..., :n_mfcc]

    mfcc = mfcc.T
    mfcc = np.expand_dims(mfcc, axis=0)
    mfcc = np.expand_dims(mfcc, axis=-1)

    return mfcc.astype(np.float32)


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


if __name__ == "__main__":
    sr = 16000
    t = np.linspace(0, 1, sr, endpoint=False, dtype=np.float32)
    audio_signal = np.sin(2 * np.pi * 440 * t) + 0.1 * np.random.randn(sr).astype(np.float32)

    mfcc_np = extract_mfcc_numpy(audio_signal)

    tf_layer = AudioPreprocess(sample_rate=sr, n_mfcc=40, n_fft=400, hop_length=160, n_mels=40)
    audio_tensor = tf.convert_to_tensor(audio_signal[np.newaxis, :], dtype=tf.float32)
    mfcc_tf = tf_layer(audio_tensor).numpy()

    mae = np.mean(np.abs(mfcc_np - mfcc_tf))
    rmse = np.sqrt(np.mean((mfcc_np - mfcc_tf) ** 2))
    max_diff = np.max(np.abs(mfcc_np - mfcc_tf))

    vec_np = mfcc_np.flatten()
    vec_tf = mfcc_tf.flatten()
    
    cos_sim = np.dot(vec_np, vec_tf) / (np.linalg.norm(vec_np) * np.linalg.norm(vec_tf))
    corrcoef = np.corrcoef(vec_np, vec_tf)[0, 1]

    print(f"NumPy izlaz: {mfcc_np.shape}")
    print(f"TensorFlow izlaz: {mfcc_tf.shape}")
    print(f"Srednja apsolutna pogreška: {mae:.6f}")
    print(f"Korijenska kvadratna pogreška: {rmse:.6f}")
    print(f"Maksimalna apsolutna razlika: {max_diff:.6f}")
    print(f"Kosinusna sličnost: {cos_sim:.6f}")
    print(f"Pearsonov koeficijent korelacije: {corrcoef:.6f}")

    print("NumPy/SciPy:")
    print(mfcc_np[0, :5, :5, 0])

    print("\nTensorFlow:")
    print(mfcc_tf[0, :5, :5, 0])