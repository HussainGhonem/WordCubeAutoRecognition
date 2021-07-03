%Works for
%case 2.1
I=imread("TestCases/Case2/2.1.jpg");
I=rgb2gray(I);
I=imcrop(I,[40 20 130 40])
I=I+50;
BW=imbinarize(I)
imshow(BW)
results = ocr(BW, 'CharacterSet','0 1 2 3 4 5 6 7 8 9 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z','TextLayout','Word');
results.Text