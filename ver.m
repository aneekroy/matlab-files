function ver
A = imread('/home/aneek/Documents/summerSchool/pgm/balloons.ascii.pgm');
C=zeros(size(A));
[row,col]=size(A);
for i=1:col-1
    for j=1:row
        C(j,i)=A(j,i+1)-A(j,i);
    end
end

imshow(C);

end

