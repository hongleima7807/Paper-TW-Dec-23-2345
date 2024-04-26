clear all
clc;
clear;
close all;


hbar = 0.8;
hbar0 = hbar;


asigd = [ 0.0, 0.05,0.25, 0.5, 0.75, 1.05, 10^15];
ahbar = [0.6,0.6,  0.6, 0.6, 0.6, 0.6,0.6,0.6,0.6] ;



sigLen = length(asigd);
t1=clock;

%result_record(1:3,i) = x_current;
cnt = 0;

aJ2 = fnGetXArray(0,1.2,200);
for ii = 1:1: sigLen
     hbar = 1;
     sigd = asigd(ii);

    for(i = 1:1:length(aJ2))
        varphi = 1 *pi/6;
        cnt = cnt + 1;
        J2 = aJ2(i);
        if(J2 > 0.8)
            dummy = 0;
        end
       cdfJ2 = fnCDFJbi(J2, sigd, varphi,hbar);
        cdfJ2sim =fnSimCdfJbi(J2 , sigd,varphi,1);
        if(cdfJ2sim < -0.4)
            dummy = 0
        end
        aaPltYSim(ii,i) = cdfJ2sim;
       aaPltY1(ii,i) = cdfJ2;
      aPltY1(i) = cdfJ2;
        aaPltX(ii,i) = J2;
        aPltX(i) = J2;
        if(i == 200)
            dummy = 0;
        end
    end
    
    hold on
     plot(aaPltX(ii,:), aaPltY1(ii,:), 'b-');
    hold on
    ii
end


t2=clock;
time =  etime(t2,t1)
z = 3999.9999994/1000;
pltIStart = 1;
pltIEnd = length(asigd);

%plt_aaXYCdfJ2Sim;   %to plot


