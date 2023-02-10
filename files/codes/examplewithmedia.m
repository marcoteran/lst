close all; clear;
gris=imread("grayscale.png");
gris_dark=gris-100;
gris_light=gris+100;

figure()
subplot(2,2,[1 2])
imshow(gris);
subplot(223)
imshow(gris_dark);
title("Gris oscuro")
subplot(224)
imshow(gris_light);
title("Gris claro")

lena=imread("lena.png");
lena_r=lena(:,:,1);
lena_g=lena(:,:,2);
lena_b=lena(:,:,3);

figure()
subplot(2,2,1)
imshow(lena);
subplot(222)
imshow(lena_r);
title("Canal rojo")
subplot(223)
imshow(lena_g);
title("Canal verde")
subplot(224)
imshow(lena_b);
title("Canal blue")
[l w canales]=size(lena);

figure()
subplot(1,2,1)
imshow(lena);
subplot(1,2,2)
img_z=zeros(l,w,canales,'uint8');
img_z(:,:,3)=img_z(:,:,3)+100;
lena_ftd=lena+img_z;
imshow(lena_ftd);

%% Audio
load handel.mat
filename = "handel.wav";
audiowrite(filename,y,Fs);

clear all;

[y Fs]=audioread("handel.wav");

figure()
y_low=0.1*y;
y_high=10*y;

t=[0:length(y)-1]*(1/Fs);
subplot(311)
plot(t,y)
ylim([-2.5 2.5])
subplot(312)
plot(t,y_low)
ylim([-2.5 2.5])
subplot(313)
plot(t,y_high)
ylim([-2.5 2.5])

sound(y,Fs);










