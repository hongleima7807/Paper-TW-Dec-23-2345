function [ Xihl ] = fnXiHL_s( z, varphi, HFlag )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
   if(HFlag == 1)
      Xihl =  cos(varphi) ^ 2 - z * cos(0.2e1 * varphi) + 0.1e1 * abs(sin(0.2e1 * varphi)) * sqrt(z * (0.1e1 - z));
   else
      Xihl =  cos(varphi) ^ 2 - z * cos(0.2e1 * varphi) - 0.1e1 * abs(sin(0.2e1 * varphi)) * sqrt(z * (0.1e1 - z));
   end
end

