function y=inputImage(i,j)

camtemp=webcam;
camtemp.Resolution='160x120';
preview(camtemp);
for k=i:j
    pause;
    img=snapshot(camtemp);
    img1=rgb2gray(img);
    
    imwrite(img1,['imgg',num2str(k),'.jpg']);
   
    %inputImage2(i,j);
   
    
end
delete(camtemp);