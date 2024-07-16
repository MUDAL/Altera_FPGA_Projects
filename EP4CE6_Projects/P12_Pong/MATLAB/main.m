% Thresholding operation (with colour inversion)

threshold = 100;

% 1. RGB to Gray
gamemenu_img = imread('game_menu.jpg');
gamemenu_gray = rgb2gray(gamemenu_img);

gameover_img = imread('game_over.jpg');
gameover_gray = rgb2gray(gameover_img);

gamemenu_gray(gamemenu_gray < threshold) = 1;
gamemenu_gray(gamemenu_gray >= threshold) = 0;
gamemenu_binary = logical(gamemenu_gray); % Bitmap

gameover_gray(gameover_gray < threshold) = 1;
gameover_gray(gameover_gray >= threshold) = 0;
gameover_binary = logical(gameover_gray); % Bitmap

imshow(gamemenu_binary);
figure
imshow(gameover_binary);

img_to_mif(gamemenu_binary,'game_menu.mif');
img_to_mif(gameover_binary,'game_over.mif');

imwrite(gamemenu_binary,'gamemenu_inverted.jpg');
imwrite(gameover_binary,'gameover_inverted.jpg');
