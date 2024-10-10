%%MATLAB Code to plot the RMS (Root Mean Squared) Intensity along the vertical line (middle of the image)
clc
clear 
%Creation of an empty array of values '0'
I1 = zeros(2160, 3840, 'double');
i=1;
%While loop reads each and every frame (i.e. an image) of the video saved in the directory (images are saved in the form of img_1.png, img_2.png ...... upto img_1059.png)
while i<=1059 
    I = imread(strcat('img_', num2str(i), '.png'));
    Id = double(I);
     %In each iteration the elements of the array are squared (multiplied by itself) & added up in the I1 array.
    I1 = I1 + Id.*Id; 
    i = i+1; 
end 
% x and y vectors contains the x & y coordinates of the endpoints of the line segment. 
x = [size(I,2)/2 size(I,2)/2];
y = [0 size(I,1)]; 
figure(1)
%The rms values can be found by taking the average of the elements of matrix I1 and taking square root of the values. 
Iavg1 = sqrt(I1.*(1/1059));
improfile(Iavg1, x, y)

