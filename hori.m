function hori
A = imread('/home/aneek/Documents/summerSchool/pgm/tracks.ascii.pgm');
B=zeros(size(A));
[row,col]=size(A);
for i=1:row
    for j=1:col-1
        B(i,j)=A(i,j+1)-A(i,j);
    end
end
figure;
 imshow(B);
title('HORIZONTAL Derivative');
imwrite(B,'horz.pgm');

G=zeros(size(A));
for i=1:row
    for j=1:col-1
        G(i,j)=B(i,j+1)-B(i,j);
    end
end
figure;
 imshow(G);
title('HORIZONTAL Double Derivative');
imwrite(G,'horzdouble.pgm');

C=zeros(size(A));
[row,col]=size(A);

for i=1:row-1
    for j=1:col
       C(i,j)=A(i+1,j)-A(i,j);
    end
end
figure; imshow(C);
title('VERTICAL Derivative');
imwrite(C,'ver.pgm');

F=zeros(size(A));

for i=1:row-1
    for j=1:col
       F(i,j)=C(i+1,j)-C(i,j);
    end
end

figure; imshow(F);
title('VERTICAL Double Derivative');
imwrite(F,'verdouble.pgm');

D=zeros(row,col);
D=sqrt(B.^2+C.^2);
figure; imshow(D);
title('SQUARE of Derivatives');
imwrite(D,'sqr.pgm');

E=zeros(row,col);
for i=1:row
    for j=1:col
        E(i,j)=atan2(B(i,j),C(i,j));
    end
end
figure ; imshow(E);
title('Theta Mapping');
imwrite(E,'tan.pgm');

figure ; imshow(A);
title('ORIGINAL Image');
figure ; imshow(edge(A,'canny'));
title('Edge plotted for original image');
figure ; imshow(edge(B,'canny'));
title('Edge plotted for Horizontal differential image');
figure ; imshow(edge(C,'canny'));
title('Edge plotted for Vertical Differential image');
figure ; imshow(edge(D,'canny'));
title('Edge plotted for Squared of horiZ and Vertical image');
figure ; imshow(edge(E,'canny'));
title('Edge plotted for theta plotted image');




end

