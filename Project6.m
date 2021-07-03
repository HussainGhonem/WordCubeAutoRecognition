%Works for
%case 4.1

I=imread("TestCases/Case4/4.1.jpg");
I=rgb2gray(I);
I=I+110;
imshow(I);
results = ocr(I, 'CharacterSet','0 1 2 3 4 5 6 7 8 9 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z','TextLayout','Block');
results.Text