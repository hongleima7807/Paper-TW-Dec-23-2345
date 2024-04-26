function [ dJbi ] = fnDiffJbiXe1( x, varphi )
%UNTITLED6 此处显示有关此函数的摘要
%   此处显示详细说明
  dJbi = -0.2e1 * cos(varphi) ^ 2 * x + 0.2e1 * sin(varphi) ^ 2 * x - 0.2e1 * cos(varphi) * sin(varphi) * sqrt(-x ^ 2 + 0.1e1) + 0.2e1 * cos(varphi) * sin(varphi) * x ^ 2 * (-x ^ 2 + 0.1e1) ^ (-0.1e1 / 0.2e1);

end

