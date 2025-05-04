% Görüntüyü dosyadan okuyoruz
A = imread("aley.jpg");

% Görüntünün kırmızı kanalını alıyoruz (1. renk kanalı)
A_red = A(:,:,1);

% Sobel kenar bulma filtresi (x-y yönlü gradyan için)
h = [-1 0 1; 
     -2 0 2;
     -1 0 1];

% conv2 fonksiyonu:
%  - conv2(X, H, 'same') ifadesi, 2B konvolüsyonu gerçekleştirir.
%  - X: girdi matrisi (burada double(A_red))
%  - H: filtre (kernel) matrisi (burada h)
%  - 'same': çıktı matrisinin boyutunu girdi ile aynı tutar,
%    kenar etkilerini yönetmek için sıfır dolgusu (zero-padding) uygular.
%  - Sonuç, her pikselde H filtresinin o piksel çevresinde kaydırılarak
%    nokta çarpımı ve toplam işlemi ile elde edilen değerdir.
y = conv2(double(A_red), h, 'same');

% Ekrana iki alt grafik (subplot) çiziyoruz
subplot(1,2,1);
imshow(A_red);
title("Orijinal Kırmızı Kanal");

subplot(1,2,2);
% conv2 çıktısı double olacağından, imshow için uint8 aralığına çeviriyoruz
imshow(uint8(y));
title("Sobel Kenarları");

% Açıklama Özeti:
% 1) Sobel filtresi h, x-yönündeki yoğunluk farklarını ölçer ve dikey kenarları vurgular.
% 2) conv2 ile her piksel için filtresel bölge (3x3) üzerinde
%    çarpma-toplama işlemi yapılır.
% 3) 'same' modu, çıktı boyutunu orijinal ile eşler, kenar pikseller için
%    dışarı sıfır ekleyerek (zero-padding) hesaplama yapar.
