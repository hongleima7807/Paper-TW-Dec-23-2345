
% K = 1.38 * 1e-23;
% T0 = 298;  %ÊÒÎÂ 25¶È
% T = 298;
% c_bar =0.993;
% alpha_cu = 3.9 * 1e-3;
% x_ferro = 5e-4;
% p_para  =   0;  %0.3;
% p_ferro =  0;  % 0.1;
% 
% mu0 =4*pi*1e-7; %zheng kong
% mu1 = mu0 * (1 +  (p_para * c_bar / T) + p_ferro * x_ferro );
mu1 = 1.256637061435917e-06;
epsl = 7 * 8.854 *10^(-12);
conductivity = 0.01;
%conductivity = 0.000000000000001;




R0 = 0.0166;
%R0 = R00 * (1 + alpha_cu * (T - T0));

% %sc circuit
N0 = 15;  % the  windings of the coil
acoil = 0.6;% the radius of  coil ×¢Òâ ÊÇ°ë¾¶
% N0 = 5;  % the  windings of the coil
% acoil = 0.15;% the radius of  coil


% R0 = N0 * 2*pi*acoil * R0;
% L = 0.5 * mu1 * pi * (N0^2) * acoil;
% f0 = 10000;



%f0 = 10000;


%%%%% 