function [ varphi ] = fnGetVarphi( x_i,y_i,z_i,varphi_road )
%UNTITLED4 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
 % cosvarphi = (2*z_i^2 - y_i^2 - x_i^2 ) / (2*(x_i^2 + y_i^2 + z_i^2));
  cosx = (2 * z_i^2 - y_i^2 - x_i^2 );
  cosy2 = 9 * (x_i^2 + y_i^2) * z_i^2;
  
  cosvarphi = cosx / (sqrt(cosx^2 + cosy2)); 
  varphi = acos(cosvarphi) + varphi_road;

end

