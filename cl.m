function cl
originalBW = imread('circles.png');  

se = strel('disk',11);        
erodedBW = imerode(originalBW,se);
figure,imshow(originalBW), figure, imshow(erodedBW);
dilateBW = imdilate(erodedBW,se);
figure,imshow(dilateBW);
openBW = imopen(originalBW,se);
figure,imshow(openBW);
end