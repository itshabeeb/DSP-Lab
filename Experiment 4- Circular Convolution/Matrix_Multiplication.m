clc;
clear;
close all;
x=input('enter the elements in x[n]:');
x_ind=input('enter the index of x[n]:');
h=input('enter the elements in h[n]:');
h_ind=input('enter the index of h[n]:');
hr=[];
h1=h;
h=h(:,end:-1:1);
for i=1:length(h)
h=[h(end) h(1:end-1)];
hr=[hr;h];
end
y=hr*x';
disp(y);
subplot(3,1,1);
stem(x_ind,x);
title('x[n]');
xlabel('time');
ylabel('amplitude');
grid;
subplot(3,1,2);
stem(h_ind,h1);
title('h[n]');
xlabel('time');
ylabel('amplitude');
grid;
subplot(3,1,3);
Ny=0:3;
stem(Ny,y);
title('Circular convolution output y[n]');
xlabel('time');
ylabel('amplitude');
grid;

