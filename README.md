# Görüntü İşleme MATLAB Çalışmaları

Bu repo, temel görüntü işleme işlemleri üzerine MATLAB ile gerçekleştirilmiş çeşitli uygulamaları içerir. Her dosya, farklı bir görüntü işleme tekniği veya filtre uygulamasını örneklemektedir.

## İçerik

### 1. `conv2_sobelFilter.m`
- **Amaç:** Görüntünün kenarlarını bulmak için Sobel filtresi uygular.
- **İşlev:** Görüntünün kırmızı kanalını alıp yatay Sobel filtresiyle konvolüsyon işlemi yapar ve sonucu orijinal görüntü ile karşılaştırmalı gösterir.

### 2. `imnoise_salt&pepper.m`
- **Amaç:** Görüntüye tuz ve karabiber (salt & pepper) gürültüsü eklemek.
- **İşlev:** Rastgele noktalar siyah ve beyaz olacak şekilde gürültü ekler, etkisini görselleştirir.

### 3. `imnoise_speckle.m`
- **Amaç:** Görüntüye speckle (beneksel) gürültü eklemek.
- **İşlev:** Genelde radar ve medikal görüntülerde görülen speckle gürültüsünü simüle eder.

### 4. `manuelConv2.m`
- **Amaç:** 2D konvolüsyon işlemini elle (manuel döngülerle) gerçekleştirmek.
- **İşlev:** `conv2` fonksiyonunun yaptığı işlemi adım adım matris içinde döngü kullanarak gösterir ve doğruluğunu `conv2` ile karşılaştırır.

### 5. `manuelFft2.m`
- **Amaç:** 2D Fourier Transform işlemini elle (manuel döngülerle) hesaplamak.
- **İşlev:** `fft2` fonksiyonunun yaptığı işlemi adım adım döngülerle gerçekleştirir ve sonuçları genlik & faz açısından `fft2` çıktısı ile karşılaştırır.

### 6. `rand().m`
- **Amaç:** Görüntüye farklı seviyelerde rastgele gürültü eklemek ve etkisini görselleştirmek.
- **İşlev:** Orijinal görüntüye düşük ve yüksek seviyede rastgele (uniform) gürültü ekler; orijinal, düşük ve yüksek gürültülü halleri yan yana gösterir.

## Kullanım

1. MATLAB açın.
2. İlgili `.m` dosyasını çalıştırın.
3. Dosya içindeki `imread()` fonksiyonunda belirtilen dosya adlarının (ör: `image.jpg`) proje klasöründe bulunduğundan emin olun.

> **Not:** `image.jpg` dosyaları çalıştırmadan önce klasörünüze eklenmelidir.

## Gereksinimler

- MATLAB 
- Image Processing Toolbox (bazı fonksiyonlar için)

## Katkı ve Geri Bildirim

Bu repo eğitim ve öğrenme amaçlı hazırlanmıştır. Her türlü öneri ve katkıya açığım. Pull request veya issue açabilirsiniz.