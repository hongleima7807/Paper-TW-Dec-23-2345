function [ mathcalXstar ] = fnMathcalXstarL( varphi )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��f
   k = floor( varphi / pi);
   if((varphi>=k*pi)  && (varphi <= k*pi + pi/2))
   %   
        mathcalXstar = -tan(varphi)/ sqrt(tan(varphi) ^ 2 + 0.1e1);
        mathcalXstar = -sin(varphi)
   else
        mathcalXstar = -1 / sqrt(tan(varphi) ^ 2 + 0.1e1);
   end

end
