%%Design a hebbian neural network to recognize the 'L' and 'Us'

clc
clear all

%Input pattern
L = [1 -1 -1 1 -1 -1 1 1 1];
U = [1 -1 1 1 -1 1 1 1 1];

%Targets
t = [1;-1];

%Training Phase
%computing the number of inputs in a pattern
n = length(L);

%Conversion of input pattern into a single matrix 'x'
x(1,1:n) = L;
x(2,1:n) = U;

%Initialization of the weight matrix
w_old = zeros(1,n);

%Initialization of bias weight
w0_old = 0;

%computation of new weights using hebbian rule
for i=1:2
    w_new = w_old  + x(i,1:n)*t(i);
    w0_new = w0_old + 1*t(i);
    
    w_old = w_new;
    w0_old = w0_new;
end

disp(w0_new);
disp(w_new);

%Testing phase

pattern = input('Enter the pattern : ');
yin = pattern*w_new' + w0_new*1;

%Activation Function

if yin>=0
    output=1;
else
    output=-1;
end

disp(output);