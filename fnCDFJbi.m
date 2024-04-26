function [ CDFJbi ] = fnCDFJbi( z, sigma, varphi, vartheta) 
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
   sin2 = sin(varphi) * sin(varphi);
   cos2 = cos(varphi) * cos(varphi);
   Xih = fnXiHL_s(z,varphi,1);
   Xil = fnXiHL_s(z,varphi,0);
   vartheta=1;
   sigma2 = sigma*sigma;
   if(z >= 1)
       CDFJbi = 1;
   elseif( (max(sin2,cos2) <= z) && (z < 1))
       CDFJbi = 1 - 0.5 * (erf(sqrt(Xih/(2*sigma2) ))- erf(sqrt(Xil/(2*sigma2) ))  );
   elseif (( cos2 <= z) && (z < sin2))
       CDFJbi =  0.5 * (erf(sqrt(Xih/(2*sigma2) ))+ erf(sqrt(Xil/(2*sigma2) ))  );
   elseif((sin2 <= z) && (z < cos2))
      CDFJbi = 1 - 0.5 * (erf(sqrt(Xih/(2*sigma2) ))+ erf(sqrt(Xil/(2*sigma2) ))  );
   elseif((0 <= z) && (z < min(sin2,cos2)))
      CDFJbi =  0.5 * (erf(sqrt(Xih/(2*sigma2) ))- erf(sqrt(Xil/(2*sigma2) ))  );
   elseif( z < 0)
      CDFJbi = 0;
   end
       
end

