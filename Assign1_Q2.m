%%MATLAB Code to plot the Average Intensity along the vertical line (middle
% of the image) 
clc
clear 
%Creation of an empty array of values '0'
I1 = zeros(2160, 3840, 'double');
i=1;
%While loop reads each and every frame (i.e. an image) of the video saved in the directory (images are saved in the form of img_1.png, img_2.png ...... upto img_1059.png)
while i<=1059
    I = imread(strcat('img_', num2str(i), '.png'));
    %In each iteration the elements of the array are added up in the I1 array. 
    I1 = I1 + double(I); 
    i = i+1; 
end 
% x and y vectors contains the x & y coordinates of the endpoints of the line segment. 
x = [size(I,2)/2 size(I,2)/2];
y = [0 size(I,1)]; 
figure(1)
imshow(I)
hold on 
plot(x,y,'r')
figure(2)
%Average is taken out by dividing the elements of I1 by the total no of frames (i.e. 1059) 
Iavg1 = I1.*(1/1059);
%improfile() function plots out the values of pixels along the line segment
improfile(Iavg1, x, y)