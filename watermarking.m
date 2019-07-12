%Yash Pawar BT16ECE020
clear all;close all;clc;

%deconstruction

gray1 = imread('grey_lena_512x512.png');%read images
bp1=im2bitp(gray1);

gray2 = imread('yash.png');
bp2=im2bitp(gray2);

%reconstruction
bp3=bp1;
%All bit planes message are embedded inside last bit plane of watermarked asset
bp3(:,:,1)=[bp2(:,:,1),bp2(:,:,2),bp2(:,:,3),bp2(:,:,4);
            bp2(:,:,5),bp2(:,:,6),bp2(:,:,7),bp2(:,:,8);
            bp2(:,:,1),bp2(:,:,2),bp2(:,:,3),bp2(:,:,4);
            bp2(:,:,5),bp2(:,:,6),bp2(:,:,7),bp2(:,:,8)];


%constructing image from bit planes
gray3=bitp2im(bp3);
imwrite(gray3,'watermarked_lena_512x512.png')
