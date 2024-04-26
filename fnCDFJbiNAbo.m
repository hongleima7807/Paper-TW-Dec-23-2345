function [ CDFJbi ] = fnCDFJbiNAbo( z, sigma, varphi, vartheta) 
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
  Jbi = fnJbi(vartheta, varphi);
  XiL = fnXiHL(z,varphi,0);
  XiH = fnXiHL(z,varphi,1);
  mathcalXstar = fnMathcalXstar(varphi);
  if((z >=  Jbi) && (vartheta < mathcalXstar))
     CDFJbi = 1; 
  elseif((z >=  Jbi) && (vartheta >= mathcalXstar))
     CDFJbi =  1 - erf(sqrt(XiH/sigma^2)) + erf(sqrt(XiL/(sigma^2)));
  elseif (z >= 0 && z < Jbi)
     CDFJbi =  1 - erf(sqrt(XiL/(sigma^2)));
  else
     CDFJbi = 0;
  end
end

