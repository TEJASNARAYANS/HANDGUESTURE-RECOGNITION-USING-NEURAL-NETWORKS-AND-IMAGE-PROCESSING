function y=skinmain(net)

cam=webcam();
cam.Resolution='160x120';
c=6;
preview(cam);
se = strel('line',5,90);

pause;

for i=1:100
  % writeDigitalPin(a,13-c,0);
%img=rgb2gray(snapshot(cam));
%img=imgrdy(img);
%ytest=net(img);
%[b,c]=max(ytest);
img=snapshot(cam);
I3 = skin(img);%sobel edge dnnetection
I3=I3(:,[21:140]);
I4 = imdilate(I3,se);
I4=imresize(I4,0.25);
imgtemp=reshape(I4,[],1);
[b,c]=max(net(imgtemp));
c

%writeDigitalPin(a,13-c,1);

%ytest'
pause(2);
end
end
