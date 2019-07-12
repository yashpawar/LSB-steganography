function gray=bitp2im(bp)
%constructing image from bit planes
[rows,columns,dim]=size(bp);
gray=zeros(rows,columns);
for c = 1:8
   gray=gray+bp(:,:,c)*(2^(c-1));
end
gray=uint8(gray);
end