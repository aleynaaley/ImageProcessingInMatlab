% Görüntüyü dosyadan okuyoruz
image = imread('image.jpg');

% Göz bölgesini tanımlamak için sınır koordinatlarını belirliyoruz
y_ust = 200;  % Göz bölgesinin üst sınırı
y_alt = 270;  % Göz bölgesinin alt sınırı
x_sol = 150;  % Göz bölgesinin sol sınırı
x_sag = 250;  % Göz bölgesinin sağ sınırı

% Orijinal görüntünün satır, sütun ve kanal (renk) boyutlarını alıyoruz
[satir, sutun, c] = size(image);

% Göz bölgesini saklamak için sıfırlardan oluşan bir matris oluşturuyoruz
% Boyutları: (yükseklik, genişlik, renk kanalları)
Goz = uint8(zeros(y_alt - y_ust + 1, x_sag - x_sol + 1, c));

% Belirlenen koordinatlar aralığında döngü ile göz bölgesini kesiyoruz
for i = y_ust:y_alt
    for j = x_sol:x_sag
        % Her pikseli yeni Goz matrisine kopyalıyoruz
        Goz(i - y_ust + 1, j - x_sol + 1, :) = image(i, j, :); % Göz bölgesini al
    end
end

% Kesilen göz bölgesini ekranda gösteriyoruz
imshow(Goz);

% Açıklama:
% Bu kod, bir görüntüde belirlenen koordinatlar arasında
% göz bölgesini çıkarıp gösterir. Koordinatlar değiştirilerek farklı bölgeler kesilebilir.
