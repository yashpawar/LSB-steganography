%Yash Pawar BT16ECE020
clear all;close all;clc;

gray1 = imread('watermarked_lena_512x512.png');
bp1=im2bitp(gray1);

%size of message is preknown
rows2	=128;
columns2=128;
bp2=zeros(rows2,columns2,8);

%extracting bit planes of empedded message bit planes from the least
%significant bit plane of watermarked image

for m=1:2
for n=1:4
bp2(:,:,(m-1)*4+n)=bp1(1+(m-1)*rows2:m*rows2,1+(n-1)*columns2:n*columns2,1);
end
end
 
%constructing image from bit planes
gray2=bitp2im(bp2);
