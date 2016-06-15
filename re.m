function re
I = imread('circles.png');
J = bwmorph(I,'remove');
%se = strel('disk',11);        
%closeBW = imclose(originalBW,se);

S = bwmorph(I,'skel',inf);
F = bwmorph(I,'fill');
figure,imshow(I);
figure,imshow(J);
figure,imshow(S);
figure,imshow(F);
end
