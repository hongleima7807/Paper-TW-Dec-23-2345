function [ Mbi ] = fnMbi(xi,yi,zi,f, sqrtjbi )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
  scfuncMIEnv;
  eddy = fnEddy(f, mu1, epsl,conductivity );
  rsd = sqrt(xi^2 + yi^2 + zi^2);
  Ge = exp( -rsd/eddy);
  Mk =  pi * mu1* (acoilb^2) *(acoili^2)*N0b*N0i / 4;
  loc = sqrt(((2 * zi^2 - xi^2 - yi^2)^2 + 9 * (xi^2 + yi^2) * zi^2) / (rsd^10) );
  Mbi = Ge * Mk * loc * sqrtjbi;

end

