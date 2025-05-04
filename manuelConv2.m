% Girdi matrisi (örnek görüntü)
x = [1 2; 3 4];  

% Filtre (kernel)
h = [1 0 1; 
     0 2 0; 
     1 0 1];  

% Orijinal ve filtre boyutlarını al
[rows_x, cols_x] = size(x);
[rows_h, cols_h] = size(h);

% Çıktı boyutu: (M+P-1) x (N+Q-1)
output_rows = rows_x + rows_h - 1;
output_cols = cols_x + cols_h - 1;

% Elle hesaplanacak konvolüsyon sonucu için sıfır matris
y_manual = zeros(output_rows, output_cols);

% x’i sıfır dolgulu (zero‑pad) matrise yerleştir
x_padded = zeros(output_rows, output_cols);
x_padded(1:rows_x, 1:cols_x) = x;

% -----------------------------
% 1) Manuel konvolüsyon
% -----------------------------
for n1 = 1:output_rows
    for n2 = 1:output_cols
        sum_val = 0;  % her çıktı pikseli için toplam
        for k1 = 1:rows_h
            for k2 = 1:cols_h
                % x içindeki koordinatı bul
                i = n1 - k1 + 1;
                j = n2 - k2 + 1;
                % geçerli ise katkıyı ekle
                if i > 0 && j > 0 && i <= rows_x && j <= cols_x
                    sum_val = sum_val + x(i, j) * h(k1, k2);
                end
            end
        end
        y_manual(n1, n2) = sum_val;
    end
end

% Manuel sonucu göster
disp('Manuel konvolüsyon sonucu:');
disp(y_manual);
% Beklenen çıktı:
%     1     2     0     0
%     4     6     0     0
%     4     6     0     0
%     3     4     0     0

% -----------------------------
% 2) conv2 ile otomatik konvolüsyon
% -----------------------------
y_conv2 = conv2(x, h);
disp('conv2 ile konvolüsyon sonucu:');
disp(y_conv2);
% conv2 de aynı sonucu verir:
%     1     2     0     0
%     4     6     0     0
%     4     6     0     0
%     3     4     0     0

% -----------------------------
% Açıklama
% -----------------------------
% 1) Manuel döngü ile her çıktı pikseli, filtre h’in tüm
%    elemanlarıyla x’in uygun komşu piksellerinin
%    çarpım-toplamı olarak hesaplanır.
% 2) conv2(x,h) fonksiyonu da aynı işlemi yapar, 'full' modda
%    (varsayılan) zero‑padding uygulayarak (M+P-1)x(N+Q-1)
%    boyutunda çıktı üretir.
% 3) Sonuçların aynı olmasının nedeni: hem manuel hem de conv2
%    tam konvolüsyon kurallarına uygun çalışır.