function segment=skinrgb(img)
%I=imread('imgt96.jpg');
%I=double(img);
%[hue,s,v]=rgb2hsv(I);
%cb =  0.148* I(:,:,1) - 0.291* I(:,:,2) + 0.439 * I(:,:,3) + 128;
%cr =  0.439 * I(:,:,1) - 0.368 * I(:,:,2) -0.071 * I(:,:,3) + 128;
[w h]=size(img(:,:,1));
for i=1:w
    for j=1:h 
       % i
       % j
        %img(i,j,1)
        %img(i,j,2)
       % img(i,j,3)
        if  100<=img(i,j,1) && img(i,j,1)<=210 && 50<=img(i,j,2) && img(i,j,2)<=150 && 0<=img(i,j,3) && img(i,j,3)<=85     
            segment(i,j)=1;            
        else       
            segment(i,j)=0;    
        end    
    end
end
%im(:,:,1)=I(:,:,1).*segment;   
%im(:,:,2)=I(:,:,2).*segment; 
%im(:,:,3)=I(:,:,3).*segment; 
%figure,imshow(uint8(im));