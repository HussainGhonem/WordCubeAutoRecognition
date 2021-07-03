%Works
%case 3.3 

I=imread("TestCases/Case3/3.3.jpg");
I=rgb2gray(I);
I=I+150;
I = imtophat(I,strel('disk',10));
BW = imbinarize(I);
imshow(BW)
results = ocr(BW, 'CharacterSet','0 1 2 3 4 5 6 7 8 9 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z','TextLayout','Block');
results.Text