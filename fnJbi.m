function [ Jbi ] = fnJbi( x, varphi )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
%Jbi = cos(varphi) ^ 2 * (1 - x) + sin(varphi) ^ 2 * x - 0.2e1 * cos(varphi) * sin(varphi) * sqrt((-x ^ 2 + x));
Jbi = fnJbiXe1(x,varphi);
end

