function [ Gco ] = fnGco( f )
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
scfuncMIEnv;

R0 = N0 * 2*pi*acoil * R0;
L = 0.5 * mu1 * pi * (N0^2) * acoil;
RL = R0;
omega0 = 2*pi*f;
C0 = 1/((omega0^2)*L);
Zlc = complex(0,2 * pi * f * L) + 1 / complex(0,2 * pi * f * C0);
Ztx = Zlc + R0 + RL ;
Zrx = Zlc + R0 + RL;
Gco = RL * abs(((2 * pi * f)^2  )/( Zrx^2 * Ztx));

end

