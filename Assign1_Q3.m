%% For P1(2260, 1397)
clear
clc
%Enter the x & y coordinate of the pixel.
x1 = 2260;
y1 = 1397;
%Creation of an empty array
m1 = [ ]; 
i = 1; 
%While loop reads each and every frame (i.e. an image) of the video saved in the directory (images are saved in the form of img_1.png, img_2.png ...... upto img_1059.png)
while i<=1059
    I = imread(strcat('img_', num2str(i), '.png'));
    %impixel() reads the value of the pixel at the specified location in the image. 
    c = impixel(I, x1, y1);
    %It adds up the pixel values as elements in the column in empty array 'm'
    m1(end+1, 1) = c(1,1);
    i = i+1; 
end  
%Generation of a time series for the extracted intensity data using the appropriate time steps.
TT_P1 = timetable(m1, 'TimeStep', seconds(35/1059)); 
%Conversion to a table
TableP1 = timetable2table(TT_P1); 
%Extractiing the absolute time value in seconds. 
TableP1.Time = seconds(TableP1.Time);
%% For P2(1930, 1397)
clear
clc
%Enter the x & y coordinate of the pixel.
x2 = 1930;
y2 = 1397;
%Creation of an empty array
m2 = [ ]; 
i = 1; 
%While loop reads each and every frame (i.e. an image) of the video saved in the directory (images are saved in the form of img_1.png, img_2.png ...... upto img_1059.png)
while i<=1059
    I = imread(strcat('img_', num2str(i), '.png'));
    %impixel() reads the value of the pixel at the specified location in the image. 
    c = impixel(I, x2, y2);
    %It adds up the pixel values as elements in the column in empty array 'm'
    m2(end+1, 1) = c(1,1);
    i = i+1; 
end  
%Generation of a time series for the extracted intensity data using the appropriate time steps.
TT_P2 = timetable(m2, 'TimeStep', seconds(35/1059)); 
%Conversion to a table
TableP2 = timetable2table(TT_P2); 
%Extractiing the absolute time value in seconds. 
TableP2.Time = seconds(TableP2.Time);
%% For P3(1580, 1397)
clear
clc
%Enter the x & y coordinate of the pixel.
x3 = 1580;
y3 = 1397;
%Creation of an empty array
m3 = [ ]; 
i = 1; 
%While loop reads each and every frame (i.e. an image) of the video saved in the directory (images are saved in the form of img_1.png, img_2.png ...... upto img_1059.png)
while i<=1059
    I = imread(strcat('img_', num2str(i), '.png'));
    %impixel() reads the value of the pixel at the specified location in the image. 
    c = impixel(I, x3, y3);
    %It adds up the pixel values as elements in the column in empty array 'm'
    m3(end+1, 1) = c(1,1);
    i = i+1; 
end  
%Generation of a time series for the extracted intensity data using the appropriate time steps.
TT_P3 = timetable(m3, 'TimeStep', seconds(35/1059)); 
%Conversion to a table
TableP3 = timetable2table(TT_P3); 
%Extractiing the absolute time value in seconds. 
TableP3.Time = seconds(TableP3.Time);