function [ watt ] = fnDbToW( db, m )
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
if m == 1
    watt = 10^(db/10-3);
else
    watt = 10^(db/10);
end
end

