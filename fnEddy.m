function [ eddy ] = fnEddy( f, mu, epsl, cond )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
    w = 2 * pi * f;
    deltaDao = w * sqrt((mu * epsl/2)*(sqrt(1 + (cond^2)/(w^2 * epsl^2))-1 ));
    eddy = 1 / deltaDao;
end