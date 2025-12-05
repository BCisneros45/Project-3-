% Modofying a logo
% Reading the logo image
logo = imread('Taiwan_semi_logo.jpg');
modLogo = logo;

% Converting to double for comparisons
L = double(logo);
% Red areas
redMask = (L(:,:,1) > 150) & (L(:,:,2) < 100) & (L(:,:,3) < 100);
% Black areas
blackMask = (L(:,:,1) < 60) & (L(:,:,2) < 60) & (L(:,:,3) < 60);
% Gray / white areas (similar RGB values and bright)
grayMask = (L(:,:,1) > 130) & (L(:,:,2) > 130) & (L(:,:,3) > 130) & ...
           (L(:,:,1) - L(:,:,2) < 20) & (L(:,:,2) - L(:,:,1) < 20) & ...
           (L(:,:,2) - L(:,:,3) < 20) & (L(:,:,3) - L(:,:,2) < 20);
% Separating color channels
R = modLogo(:,:,1);
G = modLogo(:,:,2);
B = modLogo(:,:,3);

% Red to Blue
R(redMask) = 0;
G(redMask) = 0;
B(redMask) = 255;

% Black to Yellow
R(blackMask) = 255;
G(blackMask) = 255;
B(blackMask) = 0;

% Gray / White to Red
R(grayMask) = 255;
G(grayMask) = 0;
B(grayMask) = 0;

% Putting channels back together
modLogo(:,:,1) = R;
modLogo(:,:,2) = G;
modLogo(:,:,3) = B;

% Displaying original and modified logo
figure
subplot(1,2,1)
imshow(logo)
title('Original Logo')

subplot(1,2,2)
imshow(modLogo)
title('Modified Logo')
