% 1. Gray to binary image
threshold = 85;
img = imread('test_image.jpg');
img(img < threshold) = 0;
img(img >= threshold) = 1;
imwrite(logical(img),'Olaoluwa_binary.jpg');
imshow(logical(img));

% 2. MIF generation
img_to_mif(img,'bitmap.mif');

