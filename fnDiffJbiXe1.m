function [ dJbi ] = fnDiffJbiXe1( x, varphi )
%UNTITLED6 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
  dJbi = -0.2e1 * cos(varphi) ^ 2 * x + 0.2e1 * sin(varphi) ^ 2 * x - 0.2e1 * cos(varphi) * sin(varphi) * sqrt(-x ^ 2 + 0.1e1) + 0.2e1 * cos(varphi) * sin(varphi) * x ^ 2 * (-x ^ 2 + 0.1e1) ^ (-0.1e1 / 0.2e1);

end

