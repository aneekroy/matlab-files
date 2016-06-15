function deb 
 Im = imread('p3.jpg');
 INITPSF = ones(size(Im));
[J P]= deconvblind(Blurred,INITPSF,30);
figure; imshow(J); title('Preliminary Restoration');
figure; imshow(P,[],'notruesize');
title('Preliminary Restoration');


end

