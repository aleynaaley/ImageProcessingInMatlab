% Görüntüyü dosyadan okuyoruz
image = imread('image.jpg');

% Görüntüyü 500x500 boyutuna yeniden boyutlandırıyoruz
image = imresize(image, [500,500]);

% Görüntünün kırmızı (1. kanal) bileşenini alıyoruz
A = image(:,:,1);

% İlk alt grafikte orijinal kırmızı kanal görüntüsünü gösteriyoruz
subplot(1,3,1);
imshow(A);
title('Orijinal Kırmızı Kanal');

% Kırmızı kanal değerlerini double (0-1 aralığına) çeviriyoruz
A = im2double(A);

% 0 ile 1 arasında rastgele gürültü (noise) matrisi oluşturuyoruz
N = rand(size(A)) * 1;

% Gürültüyü görüntüye ekliyoruz (A1: düşük seviyeli gürültü eklenmiş görüntü)
A1 = A + N;

% İkinci alt grafikte düşük seviyeli gürültü eklenmiş görüntüyü gösteriyoruz
subplot(1,3,2);
imshow(A1);
title('Düşük Gürültülü Görüntü');

% 0 ile 10 arasında rastgele gürültü matrisi oluşturuyoruz (daha yüksek gürültü)
N = rand(size(A)) * 10;

% Gürültüyü görüntüye ekliyoruz (A2: yüksek seviyeli gürültü eklenmiş görüntü)
A2 = A + N;

% Üçüncü alt grafikte yüksek seviyeli gürültü eklenmiş görüntüyü gösteriyoruz
subplot(1,3,3);
imshow(A2);
title('Yüksek Gürültülü Görüntü');
