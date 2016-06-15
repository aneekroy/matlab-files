function lab
 I=imread('tst.jpg');
 %figure,imshow(I);
 G=rgb2gray(I);
% figure,imshow(G);
 B = im2bw(G);
 C=imcomplement(B);
 [L,num]=bwlabel(C);
 figure,imshow(L);
 %num
 STATS = regionprops(L,'All');
 count1=0;
 count2=0;
 count3=0;
 count4=0;
    for i=1:num
        if(STATS(i).MinorAxisLength/STATS(i).MajorAxisLength<0.9)
            if(STATS(i).Extent<0.9)   
                count1=count1+1;%ellipse
                b(i)=1;
            else
                count2=count2+1;%rectangle
                b(i)=2;
            end
        else
           if(STATS(i).Extent<0.9)   
                count3=count3+1;%circle
                b(i)=3;
            else
                count4=count4+1;%square
                b(i)=4;
           end
        end
    end
    disp(strcat('Ellipse = ',num2str(count1)));
    disp(strcat('Rectangle = ',num2str(count2)));
    disp(strcat('Circle = ',num2str(count3)));
    disp(strcat('Square = ',num2str(count4)));
   Img1=zeros(size(L));
    Img2=zeros(size(L));
    Img3=zeros(size(L));
    Img4=zeros(size(L));
    for i=1:num
        if(b(i)==1)
            Img1=(L==i|Img1==1);
        elseif(b(i)==2)
            Img2=(L==i|Img2==1);
        elseif(b(i)==3)
            Img3=(L==i|Img3==1);
        elseif(b(i)==4)
            Img4=(L==i|Img4==1);
        end
    end
   figure,imshow(Img1);
   figure,imshow(Img2);
   figure,imshow(Img3);
   figure,imshow(Img4);
                
  % mat = zeros(num,num);
   max=0;mat=0;
   i_value=0;
   j_value=0;
   for i = 1:num
       for j =i+1:num
           mat=sqrt((STATS(i).Centroid(1)-STATS(j).Centroid(1))^2+(STATS(i).Centroid(2)-STATS(j).Centroid(2))^2);
           if(mat>max)
               max=mat;
               i_value=i;
               j_value=j;
           end
       end
   end
    Img=zeros(size(L));
            Img=(L==i_value|L==j_value);
        
   figure,imshow(Img);
                
   
   

end

