function circle

I=imread('pic4.png');
 %figure,imshow(I);
 G=rgb2gray(I);
% figure,imshow(G);
 B = im2bw(G);
 C=imcomplement(B);
 [L,num]=bwlabel(C);
 figure,imshow(L);
 %num
 STATS = regionprops(L,'All');
 
   max=0;sum=0;mean=0;
   for i = 1:num
           mat=STATS(i).Area;
           sum=sum+mat;    
   end
   mean = sum/num;
   
    Img=zeros(size(L));
    for i = 1:num
           if(STATS(i).Area>mean);
               Img=(L==i|L==1);
        
           
    end
          
   figure,imshow(Img);
end

