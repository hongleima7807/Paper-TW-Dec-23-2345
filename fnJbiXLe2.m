function [ Jbi ] = fnJbiXLe2( x2, varphi )
%UNTITLED5 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
   Jbi =  cos(varphi) ^ 2 * (-x2 + 1) + sin(varphi) ^ 2 * (x2) + 0.2e1 * cos(varphi) * sin(varphi) * sqrt(x2) * sqrt((-x2 + 1));
  % Jbi = cos(varphi)*sqrt(1-x^2)
end

