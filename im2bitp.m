function bp1=im2bitp(gray1)
[rows1,columns1]=size(gray1);
%creating empty variables to store bit planes
bp1=zeros(rows1,columns1,8);
gray1 = double(gray1);
%extracting bit planes of asset and message
 for c = 1:8
    bp1(:,:,c)=mod(floor(gray1/(2^(c-1))),2);
 end