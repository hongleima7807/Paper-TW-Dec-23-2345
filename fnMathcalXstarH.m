function [ mathcalXstar ] = fnMathcalXstarH( varphi )
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明f
   k = floor( varphi / pi);
   if((varphi>=k*pi)  && (varphi <= k*pi + pi/2))
      mathcalXstar = 1 / sqrt(tan(varphi) ^ 2 + 0.1e1);
    %  mathcalXstar =  sin(varphi);
   else
      mathcalXstar = -tan(varphi)/ sqrt(tan(varphi) ^ 2 + 0.1e1);
   end

end
