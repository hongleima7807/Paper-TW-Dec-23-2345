function [ Jbi ] = fnJbi( x, varphi )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
%Jbi = cos(varphi) ^ 2 * (1 - x) + sin(varphi) ^ 2 * x - 0.2e1 * cos(varphi) * sin(varphi) * sqrt((-x ^ 2 + x));
Jbi = fnJbiXe1(x,varphi);
end

