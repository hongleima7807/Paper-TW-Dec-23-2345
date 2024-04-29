
K = 1.38 * 1e-23;
T0 = 298;  % “Œ¬ 25∂»
T = 298;
c_bar =0.993;
alpha_cu = 3.9 * 1e-3;
x_ferro = 5e-4;
p_para  =   0;  %0.3;
p_ferro =  0;  % 0.1;

mu0 =4*pi*1e-7; %zheng kong
mu1 = mu0 * (1 +  (p_para * c_bar / T) + p_ferro * x_ferro );
epsl = 7 * 8.854 *10^(-12);
conductivity = 0.01;
%conductivity = 0.000000000000001;




R00 = 0.0166;
R0 = R00 * (1 + alpha_cu * (T - T0));%T=T0=298

% %sc circuit
%N0 = 15;  % the  windings of the coil
%acoil = 0.6;% the radius of  coil


acoilb = 0.6;
N0b = 15;

acoili = 0.4;
N0i = 30;

R0b = N0b * 2*pi*acoilb * R0;
Lb = 0.5 * mu1 * pi * (N0b^2) * acoilb;


R0i = N0i * 2*pi*acoilb * R0;
Li = 0.5 * mu1 * pi * (N0i^2) * acoili;


f0 = 10000;



%f0 = 10000;


%%%%% 