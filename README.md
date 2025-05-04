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

### 7. `FieldCutWithFor.m`
- **Amaç:** Bir görüntüden belirli bir bölgeyi (örneğin göz bölgesi) manuel döngülerle kesmek.
- **İşlev:** Belirlenen koordinatlar (üst, alt, sol, sağ sınırlar) içinde döngü ile ilgili bölgeyi yeni bir matrise kopyalar ve sadece bu kesilmiş bölgeyi gösterir.

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



# MATLAB Image Processing Projects

This repository contains various MATLAB applications focused on basic image processing operations. Each file demonstrates a different image processing technique or filter application.

## Contents

1. **`conv2_sobelFilter.m`**  
   - **Purpose:** Applies a Sobel filter for edge detection in an image.  
   - **Functionality:** Extracts the red channel of the image and performs convolution with a horizontal Sobel filter, then displays the result alongside the original image for comparison.

2. **`imnoise_salt&pepper.m`**  
   - **Purpose:** Adds salt-and-pepper noise to an image.  
   - **Functionality:** Adds noise by randomly setting some pixels to black or white, and visualizes its effect.

3. **`imnoise_speckle.m`**  
   - **Purpose:** Adds speckle (granular) noise to an image.  
   - **Functionality:** Simulates speckle noise typically observed in radar and medical imaging.

4. **`manuelConv2.m`**  
   - **Purpose:** Performs 2D convolution manually (using explicit loops).  
   - **Functionality:** Demonstrates step by step, using loops, how convolution is done on matrices, and compares the result with MATLAB’s built-in `conv2` function for verification.

5. **`manuelFft2.m`**  
   - **Purpose:** Computes the 2D Fourier Transform manually (using explicit loops).  
   - **Functionality:** Reproduces the operations of the `fft2` function step by step with loops, and compares the results in terms of magnitude and phase with the output of `fft2`.

6. **`rand().m`**  
   - **Purpose:** Adds random noise at different levels to an image and visualizes its effect.  
   - **Functionality:** Adds random (uniform) noise at low and high levels to the original image, and displays the original, low-noise, and high-noise images side by side.

7. **`FieldCutWithFor.m`**  
   - **Purpose:** Cuts out a specific region of an image (e.g., the eye region) using manual loops.  
   - **Functionality:** Copies the region defined by given coordinates (top, bottom, left, right boundaries) into a new matrix using loops, and displays only this cropped region.

## Usage

1. Open MATLAB.  
2. Run the relevant `.m` file.  
3. Ensure that the file names specified in the `imread()` function (e.g., `image.jpg`) are present in the project folder.

> **Note:** The image files (e.g., `image.jpg`) must be added to the project folder before running.

## Requirements

- MATLAB  
- Image Processing Toolbox (for some functions)

## Contribution and Feedback

This repository is intended for educational purposes. All suggestions and contributions are welcome.  
Feel free to submit a pull request or open an issue!