clc
clear all

x = 10:0.1:10;

%lambda = 1(slope)
%Binary sigmoidal function
y1 = 1./(1+exp(-x));

%Bipolar sigmoidal function
y2 = (2./ (1+exp(-x))) -1;

n = length(x);

for i=1:n
    if x(i)>0
        y3(i) = 1;
        y4(i) = 1;
    else
        y3(i) = 0;
        y4(i) = -1;
    end
end

%plot scheme 1 -individual figure windows
figure(1); plot(x,y1); title('y1-binary SLAF');
figure(2); plot(x,y2); title('y1-bipolar SLAF');
figure(3); plot(x,y3); title('y1-binary HLAF');
figure(4); plot(x,y4); title('y1-bipolar HLAF');