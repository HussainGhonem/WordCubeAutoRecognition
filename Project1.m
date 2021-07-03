%Works for
%case 1
%1.1 & 1.3 
%case 3
%3.2
%Case 4
%4.2(6,4,I, and 3 only)
%Case6 ComplexBG
%6.4 ,6.3(A and C only), 6.2, and 6.1(X,H, and 6 only)
%Case5 Tilt
%5.1 (B and Y only)
%Case7 TightCubes
%7.1 and 7.3 (3,2, and 5 only)
%BONUS/Case8 NewShapes 
%9 & C & O & E

I=imread("TestCases\BONUS\Case7 TightCubes\7.1.jpg");
I=rgb2gray(I);
imshow(I)
[regI cc]=detectMSERFeatures(I,'RegionAreaRange',[100 5000]);
figure; imshow(I); hold on;
plot(regI,'showPixelList',true,'showEllipses',false);
mserStats = regionprops(cc,'Image');
for i=1:size(mserStats)
    img=mserStats(i).Image;
    img = padarray(img, [1 1]);
    results = ocr(img, 'CharacterSet','0 1 2 3 4 5 6 7 8 9 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z ','TextLayout','Word');
    txt=results.Text;
    conf=results.WordConfidences;
    if conf > 0.8
            disp(conf);
            disp(txt);
    end
end