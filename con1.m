function con1
I=imread('letter.png');
G=rgb2gray(I);
 B = im2bw(G);
 C=imcomplement(B);
 [L,num]=bwlabel(C);
 figure,imshow(L);
 STATS = regionprops(L,'All');
 e = [STATS.EulerNumber];
 
  figure,imshow((ismember(L,find(e==0))));
  figure,imshow((ismember(L,find(e==-1))));
 figure,imshow((ismember(L,find(e==1))));
end
 