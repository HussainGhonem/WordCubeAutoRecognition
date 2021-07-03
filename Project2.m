%Works for
%case 1.2

%For B:

I=imread("TestCases/Case1/1.2.jpg");
I=rgb2gray(I);
I=I+120;
[~,threshold] = edge(I, 'sobel');
fudgeFactor = 0.3;
BW = edge(I, 'sobel', threshold * fudgeFactor);
imshow(BW);
se90 = strel('line',3,90);
se0 = strel('line',3,0);
BWsdil = imdilate(BW, [se90 se0]);
imshow(BWsdil);
BWfinal = imerode(BWsdil, se90);
BWfinal = imerode(BWfinal, se90);
BWfinal = imerode(BWfinal, se90);
BWfinal = imerode(BWfinal, se90);
BWfinal = imerode(BWfinal, se90);
BWfinal = imerode(BWfinal, se90);
imshow(BWfinal);
results = ocr(BWfinal, 'CharacterSet','0 1 2 3 4 5 6 7 8 9 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z','TextLayout','Word');
results.Text

%For E:

I=imread("TestCases/Case1/1.2.jpg");
I=rgb2gray(I);
imshow(I)
[regI cc]=detectMSERFeatures(I,'RegionAreaRange',[100 5000]);
figure; imshow(I); hold on;
plot(regI,'showPixelList',true,'showEllipses',false);
mserStats = regionprops(cc,'Image');
img=mserStats(1).Image;
img = padarray(img, [1 1]);
figure; imshow(img);
results = ocr(img, 'CharacterSet','0 1 2 3 4 5 6 7 8 9 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z ','TextLayout','Word');
results.Text
