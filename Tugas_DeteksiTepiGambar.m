Image = imread('fotoku.jpg');
figure(1);
imshow(Image);
title('Gambar Berwarna');

a = rgb2gray(Image);
figure(2);
imshow(a);
title ('Gambar Keabuan');

%Sobel
b = edge(a,'Sobel');
figure(3);
imshow(b);
title('Gambar Metode Sobel');

%Roberts
c = edge(a,'Roberts');
figure(4);
imshow(c);
title('Gambar Metode Roberts');

%Prewitt
d = edge(a,'Prewitt');
figure(5);
imshow(d);
title('Gambar Metode Prewitt');

%Laplacian
e = edge(a,'log');
figure(6);
imshow(e);
title('Gambar Metode Laplacian');

%Compass
Utara = [1 1 1; 1 -2 1; -1 -1 -1];
Selatan = [-1 -1 -1; 1 -2 1; 1 1 1];
Timur = [-1 1 1; -1 -2 1; -1 1 1];
Barat = [1 1 -1; 1 -2 -1; 1 1 -1];

figure(7);
imshow(conv2(a,Utara,'same'));
title('Gambar Compass Utara');

figure(8);
imshow(conv2(a,Selatan,'same'));
title('Gambar Compass Selatan');

figure(9);
imshow(conv2(a,Timur,'same'));
title('Gambar Compass Timur');

figure(10);
imshow(conv2(a,Barat,'same'));
title('Gambar Compass Barat');

%Isotropic
Horizontal = [-1 0 1; -sqrt(2) 0 sqrt(2); -1 0 1];
Vertikal = [-1 -sqrt(2) -1; 0 0 0; 1 sqrt(2) 1];

figure(11);
imshow(conv2(a,Horizontal,'same'));
title('Gambar Isotropic Horizontal');

figure(12);
imshow(conv2(a,Vertikal,'same'));
title('Gambar Isotropic Vertikal');

