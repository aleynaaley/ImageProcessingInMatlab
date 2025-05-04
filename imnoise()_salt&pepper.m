% Görüntüyü dosyadan okuyoruz
A = imread('image.jpg');

% İlk alt grafikte orijinal görüntüyü gösteriyoruz
subplot(1,3,1);
imshow(A);
title('Orijinal Görüntü');

% Görüntüye %20 yoğunlukta tuz & biber (salt & pepper) gürültüsü ekliyoruz
A1 = imnoise(A, 'salt & pepper', 0.2);

% İkinci alt grafikte düşük yoğunlukta salt & pepper gürültülü görüntüyü gösteriyoruz
subplot(1,3,2);
imshow(A1);
title('Salt & Pepper Gürültü (0.2)');

% Görüntüye %100 yoğunlukta tuz & biber (salt & pepper) gürültüsü ekliyoruz
A2 = imnoise(A, 'salt & pepper', 1);

% Üçüncü alt grafikte yüksek yoğunlukta salt & pepper gürültülü görüntüyü gösteriyoruz
subplot(1,3,3);
imshow(A2);
title('Salt & Pepper Gürültü (1)');

% Salt & Pepper Gürültüsü:
% Bu gürültü türü, bazı piksellerin tamamen siyah (0) veya tamamen beyaz (1) olmasına neden olur.
% Genelde dijital iletim hatalarında ya da düşük kaliteli sensörlerde görülen bir gürültü çeşididir.
