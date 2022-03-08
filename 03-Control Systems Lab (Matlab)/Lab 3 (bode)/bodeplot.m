% Experiment - Bode Plot
% 1. Input is sin or cosine wave
% 2. varying omega from 0 to infinity
% 3. will find magnitude and phase
clc;
close all;
clear all;
num1=1;
den1=[1 15 36 0];
bode[num1,den1];