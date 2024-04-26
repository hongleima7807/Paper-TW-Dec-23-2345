function [ db ] = fnWToDb( watt, m )
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
if m == 1
    db = 10 * log10(watt)+30;
else
    db = 10 * log10(watt);
end
end

