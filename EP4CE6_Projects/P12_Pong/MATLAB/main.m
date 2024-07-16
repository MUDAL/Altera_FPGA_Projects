%Thresholding operation
threshold = 100;
% 1. RGB to Gray
gamemenu_img = imread('game_menu.jpg');
gamemenu_gray = rgb2gray(gamemenu_img);

gameover_img = imread('game_over.jpg');
gameover_gray = rgb2gray(gameover_img);

gamemenu_gray(gamemenu_gray < threshold) = 1;
gamemenu_gray(gamemenu_gray >= threshold) = 0;
gamemenu_gray = logical(gamemenu_gray); % Bitmap

gameover_gray(gameover_gray < threshold) = 1;
gameover_gray(gameover_gray >= threshold) = 0;
gameover_gray = logical(gameover_gray); % Bitmap

imshow(gamemenu_gray);
figure
imshow(gameover_gray);

img_to_mif(gamemenu_gray,'game_menu.mif');
img_to_mif(gameover_gray,'game_over.mif');