function func
A = imread('/home/aneek/Documents/summerSchool/pgm/balloons.ascii.pgm');
subplot(1,3,1);
imshow(A);
subplot(1,3,2);
imhist(A);

subplot(1,3,3);
[p,v]=imhist(A);
v=v(50:100);
p=p(50:100);

index=find(p==min(p));
val= index(1);
A(A<v(val))=0;
A(A>=v(val))=255;
imshow(A);





