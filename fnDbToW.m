function [ watt ] = fnDbToW( db, m )
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
if m == 1
    watt = 10^(db/10-3);
else
    watt = 10^(db/10);
end
end

