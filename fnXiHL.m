function [ Xihl ] = fnXiHL( z, varphi, HFlag )
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
   if(HFlag == 1)
     Xihl =  (-2 * z + 1) * cos(varphi) ^ 2 + 0.2e1 * sqrt(-sin(varphi) ^ 2 * cos(varphi) ^ 2 * z * (z - 1)) + z;  
   else
     Xihl = (-2 * z + 1) * cos(varphi) ^ 2 - 0.2e1 * sqrt(-sin(varphi) ^ 2 * cos(varphi) ^ 2 * z * (z - 1)) + z;  
   end
  
   
end





