%Thresholding operation
threshold = 150;

% 1. Gray to binary image
threshold2 = 85;
img2 = imread('test_image.jpg');
img2(img2 < threshold2) = 0;
img2(img2 >= threshold2) = 1;
imwrite(logical(img2),'Olaoluwa_binary.jpg');
imshow(logical(img2));

% 2. MIF generation
img_to_mif(img2,'bitmap.mif');

