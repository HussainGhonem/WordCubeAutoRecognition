%Works for 
%case 3.1 
%&
%BONUS/Case8 NewShapes 
%M


I=imread("TestCases/Case3/3.1.jpg");
I=rot90(I);
I=rot90(I);
I=rot90(I);
I=rgb2gray(I);
imshow(I)
[regI cc]=detectMSERFeatures(I,'RegionAreaRange',[100 5000]);
figure; imshow(I); hold on;
plot(regI,'showPixelList',true,'showEllipses',false);
mserStats = regionprops(cc,'Image');
%for M
%img=mserStats(1).Image;
img=mserStats(20).Image;
img = padarray(img, [1 1]);
figure; imshow(img);
results = ocr(img, 'CharacterSet','0 1 2 3 4 5 6 7 8 9 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z ','TextLayout','Word');
results.Text