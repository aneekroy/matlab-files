function f
J=imread('/home/aneek/Documents/summerSchool/Balls-hd-colourful-widescreen-wallpapers.jpg');
J=rgb2gray(J);
J=double(J);
i=0;
    C0=mod(J,2);
   
    title(i+'bit');
    i=i+1;
    subplot(2,4,i);
    imshow(C0);
    
    C1=mod(floor(J/2),2);
   
    title(i+'bit');
    i=1+i;
    subplot(2,4,i);
    imshow(C1);
    
    C2=mod(floor(J/4),2);
    
    title(i+'bit');
    i=i+1;
    subplot(2,4,i);
    imshow(C2);
    
    C3=mod(floor(J/8),2);
   
    title(i+'bit');
    i=i+1;
    subplot(2,4,i);
    imshow(C3);
    
    C4=mod(floor(J/16),2);
    
    title(i+'bit');
    i=i+1;
    subplot(2,4,i);
    imshow(C4);
    
    C5=mod(floor(J/32),2);
    
    title(i+'bit');
    i=i+1;
    subplot(2,4,i);
    imshow(C5);
    
    C6=mod(floor(J/64),2);
    
    title(i+'bit');
    i=i+1;
    subplot(2,4,i);
    imshow(C6);
    
    C7=mod(floor(J/128),2);
    
    title(i+'bit');
    i=i+1;
    subplot(2,4,i);
    imshow(C7);
    
    
    
end

