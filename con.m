function contour
[x,y] = meshgrid(-5:0.1:+5);
g = x.^2 + y.^2;
g= sin(x) + cos(x);
surf(x,y,g);

