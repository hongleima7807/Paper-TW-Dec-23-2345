function [ Jbi ] = fnJbiXe1( x, varphi )
%UNTITLED5 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
   Jbi =  cos(varphi) ^ 2 * (-x ^ 2 + 1) + sin(varphi) ^ 2 * (x ^ 2) - 0.2e1 * cos(varphi) * sin(varphi) * x * sqrt((-x ^ 2 + 1));
  % Jbi = cos(varphi)*sqrt(1-x^2)
end

