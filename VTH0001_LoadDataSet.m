close all
clear
clc

% Load MNIST dataset - save in MNIST.mat

% MNIST_train_image_file  = 'd:\ComputerVision\DataSet\MNIST\train-images.idx3-ubyte';
% MNIST_train_label_file  = 'd:\ComputerVision\DataSet\MNIST\train-labels.idx1-ubyte';
% MNIST_test_image_file  = 'd:\ComputerVision\DataSet\MNIST\t10k-images.idx3-ubyte';
% MNIST_test_label_file  = 'd:\ComputerVision\DataSet\MNIST\t10k-labels.idx1-ubyte';
% mnist_train_images = loadMNISTImages(MNIST_train_image_file);
% mnist_train_labels = loadMNISTLabels(MNIST_train_label_file);
% mnist_test_images = loadMNISTImages(MNIST_test_image_file);
% mnist_test_labels = loadMNISTLabels(MNIST_test_label_file);
% save MNIST.mat mnist_train_images mnist_train_labels mnist_test_images ...
%     mnist_test_labels

load MNIST.mat mnist_train_images mnist_train_labels mnist_test_images...
    mnist_test_labels
img1=reshape(mnist_train_images(:,10),28,28);
img1=imresize(img1,2.5,'bil');

% figure(2)
% display_network(mnist_train_images(:,1:100)); % Show the first 100 images
display_flag=1;
mean_dist_global=[];
nbins_theta=12;
nbins_r=5;
nsamp = 100;
ndum1=0;
ndum2=0;
[N1,N2]=size(img1);
[x1,y1,t1]=bdry_extract_3(img1);
nsamp1=length(x1);



if nsamp1>=nsamp
   [x1,y1,t1]=get_samples_1(x1,y1,t1,nsamp);
else
   error('shape #1 doesn''t have enough samples')
end


figure(1)
subplot(1,2,1)
imagesc(img1);axis('image')
X=[x1 y1];
subplot(1,2,2)
plot(X(:,1),X(:,2),'r+')
hold on
quiver(X(:,1),X(:,2),cos(t1),sin(t1),0.5,'b')
hold off


kk1= round(max(x1));
kk2= round(max(y1));
axis('ij');axis([1 kk1+5 1 kk2+5])



