function [ Gco ] = fnGco( f )
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
scfuncMIEnv;

%R0 = N0 * 2*pi*acoil * R0;   %as T=T0=298
%L = 0.5 * mu1 * pi * (N0^2) * acoil;

R0b = N0b * 2*pi*acoilb * R0;
Lb = 0.5 * mu1 * pi * (N0b^2) * acoilb;


R0i = N0i * 2*pi*acoilb * R0;
Li = 0.5 * mu1 * pi * (N0i^2) * acoili;

  RL = R0i;

  omega0 = 2*pi*f;
C0b = 1/((omega0^2)*Lb);
Zlcb = complex(0,2 * pi * f * Lb) + 1 / complex(0,2 * pi * f * C0b);

C0i = 1/((omega0^2)*Li);
Zlci = complex(0,2 * pi * f * Li) + 1 / complex(0,2 * pi * f * C0i);

% C0 = 1/((omega0^2)*L);
% Zlc = complex(0,2 * pi * f * L) + 1 / complex(0,2 * pi * f * C0);


Ztx = Zlcb + R0b + RL ;
Zrx = Zlci + R0i + RL;
Gco = RL * abs(((2 * pi * f)^2  )/( Zrx^2 * Ztx));

end

