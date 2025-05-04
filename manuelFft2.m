% --- Orijinal görüntüyü oku ---
img = imread("aley.jpg");

% --- Gri seviyeye çevir (burada sadece kırmızı kanalı alıyoruz; gri ton gibi kullanabiliriz) ---
A = img(:,:,1);

% --- Görüntüyü double formata çevir (değer aralığı 0-1 arasında olacak) ---
A = im2double(A);

% --- Gürültü ekle (SNR = 30 dB) ---
snr1 = 30;  % istenen SNR değeri
signal_power1 = mean(A(:).^2);  % sinyal gücü (ortalama güç)
noise_power1 = signal_power1 / (10^(snr1 / 10));  % gürültü gücü formülü
noise1 = sqrt(noise_power1) * randn(size(A));  % Gaussian (beyaz) gürültü üret
A1 = A + noise1;  % sinyale gürültüyü ekle
A1 = min(max(A1, 0), 1);  % değerleri 0-1 aralığına sınırla (taşmayı engelle)

% --- Görüntüyü 32x32 boyutuna indir (daha küçük boyutlarda işlem yapmak için) ---
A2 = imresize(A1, [32 32]);

% --- Ayrık Fourier Dönüşümü (DFT) elle hesaplanıyor ---
x = A2;  % işlem yapılacak matris
[M, N] = size(x);  % boyutları al
X_manual = zeros(M, N);  % DFT sonucu için boş matris

for k1 = 0:M-1
    for k2 = 0:N-1
        sum_val = 0;
        for m = 0:M-1
            for n = 0:N-1
                theta = -2 * pi * ((k1 * m / M) + (k2 * n / N));  % açı hesabı
                sum_val = sum_val + x(m+1, n+1) * exp(1i * theta);  % karmaşık üstel ve toplama
            end
        end
        X_manual(k1+1, k2+1) = sum_val;  % sonucu kaydet
    end
end

% --- fft2 ile DFT'yi hazır fonksiyonla hesapla ---
X_fft = fft2(x);

% --- Genlik ve fazları çıkar (mutlak değer ve açı)
mag_manual = abs(X_manual);  % elle hesaplanan genlik
phase_manual = angle(X_manual);  % elle hesaplanan faz

mag_fft = abs(X_fft);  % fft2 ile hesaplanan genlik
phase_fft = angle(X_fft);  % fft2 ile hesaplanan faz

% --- Sonuçları karşılaştırmalı olarak göster ---
figure;
subplot(3,2,1), imshow(img), title('Orijinal Görüntü');
subplot(3,2,2), imshow(A1), title('SNR Eklenmiş Görüntü');

% log(1 + mag_manual): log ölçekle genliği daha görünür hale getirir
subplot(3,2,3), imshow(log(1 + mag_manual), []), title('Elle Hesaplanan Genlik (kenar/desen)');
subplot(3,2,4), imshow(phase_manual, []), title('Elle Hesaplanan Faz (form)');

subplot(3,2,5), imshow(log(1 + mag_fft), []), title('fft2 Genlik');
subplot(3,2,6), imshow(phase_fft, []), title('fft2 Faz');

% --------------------
% AÇIKLAMA:
% 1) Görüntüye belirli SNR değeriyle Gaussian gürültü ekledik.
% 2) Küçük boyutlu görüntüde DFT’yi hem elle hem de fft2 fonksiyonuyla hesapladık.
% 3) Genlik (kenar/desen bilgisi) ve faz (yapısal form bilgisi) haritalarını çıkardık.
% 4) Sonuçları karşılaştırmak için yan yana görselleştirdik.