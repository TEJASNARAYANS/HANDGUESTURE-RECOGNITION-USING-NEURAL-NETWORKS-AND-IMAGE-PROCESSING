%trains a network net using n training images
%a is the input matrix , y is output matrix of the neural network
function [a,y,net]=NNinputstestskin(n);

a=zeros(900,n+10);
%y=zeros(6,n+20);
y=zeros(6,n+10);
se = strel('line',5,90);
for i=1:n
    j=mod(i,5);
    img=imread(['imgs',num2str(i),'.jpg']);

  
%imgtemp=uint8(imgtemp<150)*255;
%imgtemp=imresize(imgtemp,0.25);
%imgtemp=imgtemp(:,[11:30]);
    %imgtemp=reshape(imgtemp,[],1);
    
I3 = skin(img);%sobel edge dnnetection
I3=I3(:,[21:140]);
I4 = imdilate(I3,se);
I4=imresize(I4,0.25);
imgtemp=reshape(I4,[],1);

    a(:,i)=[imgtemp]; 
    if j == 1
        y(j,i)=1;
        %y(i)=1;
end
     if j ==2
            y(j,i)=1;
            %y(i)=2;
end
         if j ==3
                y(j,i)=1;
                %y(i)=3;
end
            if j ==4
                    y(j,i)=1;
                    %y(i)=4
end
                 
                   if j==0
y(5,i)=1;
%y(i)=5;
                end
          
        
  
end
for i=n+1:n+10
    y(6,i)=1;
    %y(i)=6;
    img=imread(['imggs',num2str(i-n),'.jpg']);
    

    
    
%imgtemp=uint8(imgtemp<150)*255;
%imgtemp=imresize(imgtemp,0.25);
%imgtemp=imgtemp(:,[11:30]);
    %imgtemp=reshape(imgtemp,[],1);

I3 = skin(img);%sobel edge dnnetection
I3=I3(:,[21:140]);
I4 = imdilate(I3,se);
I4=imresize(I4,0.25);
imgtemp=reshape(I4,[],1);   

    a(:,i)=[imgtemp]; 
    
end
    

net=feedforwardnet(20);%matlab built in NN......custom NN can also be used
net=train(net,a,y);


end

