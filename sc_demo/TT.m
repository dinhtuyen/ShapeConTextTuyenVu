[B,L] = bwboundaries(V1);
nsamp  =100;
[x1,y1,t1,c1]=bdry_extract_3(V1);
[x1,y1,t1]=get_samples_1(x1,y1,t1,nsamp);
boundary = B{1};
figure(1);
imshow(V1);

X=[x1 y1];

figure(2);
plot(X(:,1),X(:,2),'b+')
   

