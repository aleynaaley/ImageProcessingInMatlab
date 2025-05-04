% Görüntüyü dosyadan okuyoruz
A = imread('image.jpg');

% İlk alt grafikte orijinal görüntüyü gösteriyoruz
subplot(1,3,1);
imshow(A);
title('Orijinal Görüntü');

% Görüntüye 'speckle' (çizgisel/parazit) gürültü ekliyoruz, gürültü yoğunluğu 15
A1 = imnoise(A, 'speckle', 15);

% İkinci alt grafikte düşük seviyede speckle gürültülü görüntüyü gösteriyoruz
subplot(1,3,2);
imshow(A1);
title('Speckle Gürültü (15)');

% Görüntüye daha yüksek yoğunlukta 'speckle' gürültü ekliyoruz, gürültü yoğunluğu 1000
A2 = imnoise(A, 'speckle', 1000);

% Üçüncü alt grafikte yüksek seviyede speckle gürültülü görüntüyü gösteriyoruz
subplot(1,3,3);
imshow(A2);
title('Speckle Gürültü (1000)');

% Çizgisel Gürültü:
% Speckle gürültüsü, genelde radar ve tıbbi görüntülerde karşılaşılan,
% görüntü üzerinde parazitli noktalar ve çizgiler oluşturan bir gürültü türüdür.
