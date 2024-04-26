function [ varphi ] = fnGetVarphi( x_i,y_i,z_i,varphi_road )
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
 % cosvarphi = (2*z_i^2 - y_i^2 - x_i^2 ) / (2*(x_i^2 + y_i^2 + z_i^2));
  cosx = (2 * z_i^2 - y_i^2 - x_i^2 );
  cosy2 = 9 * (x_i^2 + y_i^2) * z_i^2;
  
  cosvarphi = cosx / (sqrt(cosx^2 + cosy2)); 
  varphi = acos(cosvarphi) + varphi_road;

end

