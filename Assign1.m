%% Importing the frames from the video
clc
clear
% Read the video file using video reader
v = VideoReader('ACM_2716_cylinder_water_tunneltrim_3.MP4');
n = 1;
% While loop iterates through each and every frame and saves up the grayscale image
% of each frame in PNG file format...
while hasFrame(v)
    img = readFrame(v); 
    imwrite(rgb2gray(img),strcat('img_', num2str(n), '.png'));
    n=n+1; 
end 
%% Plotting the Average Intensity & RMS Intensity values along the vertical line.
% Read the Image to be taken for analysis
%I = imread('img_1.png');
%q = size(I);
%Define the end points of the line segment along which the intensity
%profile has to be plotted...
x = [size(I,2)/2 size(I,2)/2];
y = [size(I,1) 0];
table = [ ]
%figure(1)
%imshow(I)
%hold on 
%plot(x,y,'r')
%Average Intensity values plotted along the vertical line segment.
while i<=1059 
    I = imread(strcat('img_', num2str(i), '.png'));
    c = improfile(I, x, y);
    rmsval = rms(c, "omitnan")
    avgval = mean(c, "omitnan")