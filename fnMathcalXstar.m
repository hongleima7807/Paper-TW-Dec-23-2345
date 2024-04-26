function [ mathcalXstar ] = fnMathcalXstar( varphi )
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明f
   k = floor( varphi / pi);
   if((varphi>=k*pi)  && (varphi <= k*pi + pi/2))
      mathcalXstar = 1 / (tan(varphi) ^ 2 + 0.1e1);
   else
      mathcalXstar = tan(varphi) ^ 2 / (tan(varphi) ^ 2 + 0.1e1);
   end

end

