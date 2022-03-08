clc;
% BLOCK DIAGRAM REDUCTION TECHNIQUE
clear all;
n1=1; d1=1;
n2=1; d2=[1 1];
n3=1; d3=[1 2];
n4=1; d4=[1 3];
n5=4; d5=1;
n6=8; d6=1;
n7=12; d7=1;
input=1;
output=4;
nblocks=7;
blkbuild;
q= [2 1 -5 0 0
3 2 -6 0 0
4 3 -7 2 -6
5 3 0 0 0
6 3 0 0 0
7 4 0 0 0];
[aa,bb,cc,dd]=connect(a,b,c,d,q,input,output);
[num,den]=ss2tf(aa,bb,cc,dd);
printsys(num,den,'s')