function [ mathcalXstar ] = fnMathcalXstar( varphi )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��f
   k = floor( varphi / pi);
   if((varphi>=k*pi)  && (varphi <= k*pi + pi/2))
      mathcalXstar = 1 / (tan(varphi) ^ 2 + 0.1e1);
   else
      mathcalXstar = tan(varphi) ^ 2 / (tan(varphi) ^ 2 + 0.1e1);
   end

end

