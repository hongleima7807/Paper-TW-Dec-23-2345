function [ arr ] = fnGetXArray(vmin, vmax, cnt )
%UNTITLED4 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��  
    intv = (vmax - vmin) / (cnt - 1);
    arr = vmin :intv : vmax;
end

