close all
clear 
clc
% text = fileread('ND.txt');
txt = clipboard('paste');

strrep(txt, char([13 10]),' ');

tct = txt;
clipboard('copy',tct)
