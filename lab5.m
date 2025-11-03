
close all; clear; clc;

I = im2double(rgb2gray(imread('peppers.png'))); 
figure; imshow(I); title('Original Grayscale Image');

edges_sobel = edge(I,'Sobel');
edges_prewitt = edge(I,'Prewitt');

figure; montage({edges_sobel, edges_prewitt},'Size',[1 2]);
title('Sobel | Prewitt Edges');

edges_canny = edge(I,'Canny',[0.05 0.2]);
figure; imshow(edges_canny);
title('Canny Edges (Multi-Stage Detector)');

edges_log = edge(I,'log');
figure; imshow(edges_log);
title('Laplacian of Gaussian (LoG) Edges');

level = graythresh(I);
BW = imbinarize(I, level);

figure; montage({I, BW}, 'Size', [1 2]);
title('Original | Otsu Threshold Binary Mask');

[L, num] = bwlabel(BW);
RGB = label2rgb(L);
figure; imshow(RGB);
title(['Labeled Regions: ', num2str(num)]);

