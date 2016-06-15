function test
I = imread('pic41.png');
 G=rgb2gray(I);
% figure,imshow(G);
 C = im2bw(G);
 %C=imcomplement(B);
 [L,num]=bwlabel(C);
 figure,imshow(L);
 %num
 r = regionprops(L,'All');
 ar = [r.Area];
 ex = [r.Extent];
 
 mean_ar = mean(ar);
 ex_th = 0.9;
 
 id1 = find([r.Area] > mean_ar);
 id2 = find( [ r.Extent] > ex_th);
 
 id = intersect(id1,id2);
 I.out = ismember(L,id);
 
 figure,imshow(I.out);
end
