clear all
clc;
clear;
close all;


%addpath('D:\ref\matlab\sues_smallfading\cdf_function','D:\ref\matlab\sues_smallfading\debug_source', 'D:\ref\matlab\sues_smallfading\')
scInitMIEnv;
scRdParam;
scNodeEnv;

Pn = fnDbToW(dbPn, 1);
Pnf = Pn / bw;
DR = 5 ;  %data rate
f0 = 10000;
aJ2 = [ 0.0, 0.2, 0.4, 0.6, 0.8, 1.0 , 0.1, 0.9 ];
ahbar = [0.6,0.6,  0.6, 0.6, 0.6, 0.6,0.6,0.6,0.6] ;
aDbPdff = [19,  21,  25,  25.8,  45,60]
 
dbPdff = 10;
Pdff = fnDbToW(dbPdff, 1)/bw;

J2Len = length(aDbPdff);
t1=clock;


cnt = 0;

x_i = 0; y_i = 0; z_i = 50; 
SnrTh =  2^DR - 1;



asigd = fnGetXArray(1.2,35,100);
for ii = 1:1: J2Len
     %hbar = ahbar(ii);
     hbar = 1;
    % sigs = asigs(ii);
     DbPdff = aDbPdff(ii) ;
     Pdff = fnDbToW(DbPdff, 1) / bw;
    
    Mcbi = fnMbi(x_i, y_i, z_i, f0, 1);
   Interf = Pnf;
      Gco = fnGco(f0);
   PdffRecv = Pdff * Gco * Mcbi^2

    J2 = SnrTh * Interf /PdffRecv  

    for(i = 1:1:length(asigd))
        varphi = 1 *pi/6;
        cnt = cnt + 1;
        sigd = asigd(i);
        if(J2 > 0.8)
            dummy = 0;
        end
       cdfJ2 = fnCDFJbi(J2, sigd, varphi,hbar);
        cdfJ2sim =fnSimCdfJbi(J2 , sigd,varphi,1);
      %  cdfJ2sim = 0;
        if(cdfJ2sim < -0.4)
            dummy = 0
        end
        aaPltYSim(ii,i) = cdfJ2sim;
       aaPltY1(ii,i) = cdfJ2;
      aPltY1(i) = cdfJ2;
        aaPltX(ii,i) = sigd;
        aPltX(i) = sigd;
        if(i == 200)
            dummy = 0;
        end
    end
    
   plot(aaPltX(ii,:), aaPltYSim(ii,:), 'r-*');
    hold on
     plot(aaPltX(ii,:), aaPltY1(ii,:), 'b-');
    hold on
    ii
end


t2=clock;
time =  etime(t2,t1)
z = 3999.9999994/1000;
pltIStart = 1;
pltIEnd = length(aDbPdff);

%plt_aaXYPoutSigSim; % to plot


