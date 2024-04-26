function [ EJ2 ] = fnEJ2(sigma, varphi )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
   sigma2 = sigma^2;
   cos2varphi =  cos(2 * varphi);
   itemSinvarphi2 = sin(varphi) * sin(varphi);
   mulErf = erf(sqrt(1/(2 * sigma2) )) ;
   mulKuohao = ( cos2varphi - sigma2 * cos2varphi);
   itemExp = sqrt(2 * sigma2 / (1 * pi)) * cos2varphi * exp(-1 /(2 * sigma2) );
   EJ2 = itemSinvarphi2 + (mulErf * mulKuohao) + itemExp;
end

