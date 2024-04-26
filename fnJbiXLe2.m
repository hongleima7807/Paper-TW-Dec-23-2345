function [ Jbi ] = fnJbiXLe2( x2, varphi )
%UNTITLED5 此处显示有关此函数的摘要
%   此处显示详细说明
   Jbi =  cos(varphi) ^ 2 * (-x2 + 1) + sin(varphi) ^ 2 * (x2) + 0.2e1 * cos(varphi) * sin(varphi) * sqrt(x2) * sqrt((-x2 + 1));
  % Jbi = cos(varphi)*sqrt(1-x^2)
end

