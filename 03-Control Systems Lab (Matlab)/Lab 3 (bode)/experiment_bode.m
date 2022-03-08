% Experiment - Bode Plot
% 1. Input is sin or cosine wave
% 2. varying omega from 0 to infinity
% 3. will find magnitude and phase
% Right click - characteristics - all stability margins
clc;
close all;
clear all;
num1=1;
num2=[0 7 15 7 80];
num3=15;
den1=[1 15 36 0];
den2=[1 8 12 70 110];
den3=[0.7 7.1 15 0];
bode(num1,den1);
% bode(num2,den2);
% bode(num3,den3);
% num4=[537.061];
% bode(num4,den1);