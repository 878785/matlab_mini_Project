
% Image Compression Using Singular Value Decomposition (SVD)
% This project reduces image size while maintaining image quality.

clc;
clear;
close all;

%% 1. Select an Image

[fileName, folderName] = uigetfile( ...
    {'*.jpg;*.jpeg;*.png;*.tif', 'Image Files'}, ...
    'Select an Image');

if isequal(fileName, 0)
    disp('No image selected. Program stopped.');
    return;
end

img = imread(fullfile(folderName, fileName));

% Convert color image into grayscale
if size(img, 3) == 3
    img = rgb2gray(img);
end

% Convert image values into double format
img = im2double(img);

%% 2. Apply SVD to the Image

[U, S, V] = svd(img, 'econ');

%% 3. Compress the Image

% Select how many singular values to keep
k = 30;

% Check that selected rank is valid
k = min(k, min(size(img)));

% Rebuild the image using only selected values
compressedImg = U(:, 1:k) * S(1:k, 1:k) * V(:, 1:k)';

% Keep pixel values between 0 and 1
compressedImg = min(max(compressedImg, 0), 1);

%% 4. Calculate Compression Error

difference = norm(img - compressedImg, 'fro');

originalSize = norm(img, 'fro');

errorPercentage = (difference / originalSize) * 100;

fprintf('\nIMAGE COMPRESSION REPORT\n');
fprintf('Selected Rank: %d\n', k);
fprintf('Image Reconstruction Error: %.2f%%\n', ...
    errorPercentage);

%% 5. Display Original and Compressed Images

figure('Name', 'SVD Image Compression', 'Color', 'w');

subplot(1,2,1);
imshow(img);
title('Original Image');

subplot(1,2,2);
imshow(compressedImg);
title(['Compressed Image - Rank ', num2str(k)]);

%% 6. Save the Compressed Image

imwrite(compressedImg, 'Compressed_Image.png');

disp('Image compressed and saved successfully!');
