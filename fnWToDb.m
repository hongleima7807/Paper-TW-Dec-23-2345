function [ db ] = fnWToDb( watt, m )
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
if m == 1
    db = 10 * log10(watt)+30;
else
    db = 10 * log10(watt);
end
end

