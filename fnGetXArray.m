function [ arr ] = fnGetXArray(vmin, vmax, cnt )
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明  
    intv = (vmax - vmin) / (cnt - 1);
    arr = vmin :intv : vmax;
end

