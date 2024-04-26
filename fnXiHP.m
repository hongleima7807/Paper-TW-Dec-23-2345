function [ Xi ] = fnXiHP(z, varphi )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
  
  Xi = ( (cos(varphi))^2*(1-z) + (sin(varphi))^2*z + 2 * sqrt((sin(varphi ))^2*(cos(varphi^2))^2 * z * (1-z)));
  Xi =  (-0.2e1 * cos(varphi) ^ 2 * z + cos(varphi) ^ 2 + z + 0.2e1 * sqrt(-sin(varphi) ^ 2 * cos(varphi) ^ 2 * z * (z - 0.1e1)));
   if(Xi > 0)
    Xi = sqrt(Xi);
 else
    Xi = 1.1;
 end
end

