clear all
clc;
clear;
close all;




%addpath('D:\work\matlab\sues_smallfading\cdf_function','D:\work\matlab\sues_smallfading\debug_source', 'D:\ref\matlab\sues_smallfading\')
scInitMIEnv;
scRdParam;
scNodeEnv;

Pn = fnDbToW(dbPn, 1);
Pnf = Pn / bwn;
DR = 5 ;  %data rate

hbar = 0.8;
hbar0 = hbar;
f0 = 10000;





aJ2 = [ 0.0, 0.2, 0.4, 0.6, 0.8, 1.0 , 0.1, 0.9 ];
ahbar = [0.6,0.6,  0.6, 0.6, 0.6, 0.6,0.6,0.6,0.6] ;
asigd = [0,  0.3,  0.5,  0.95,  1.73, 5,20, 10^8];



dbPdff = 10;
Pdff = fnDbToW(dbPdff, 1)/bwf0;

J2Len = length(asigd);
t1=clock;

cnt = 0;

x_i = 0; y_i = 0; z_i = 50;
SnrTh =  2^DR - 1;



aDbPdff = fnGetXArray(21,30,200);
for ii = 1:1: J2Len

    hbar = 1;

    for(i = 1:1:length(aDbPdff))
        varphi = 1 *pi/6;
        cnt = cnt + 1;
        sigd = asigd(ii);

        DbPdff = aDbPdff(i) ;
        Pdff = fnDbToW(DbPdff, 1) / bwf0;

        Mcbi = fnMbi(x_i, y_i, z_i, f0, 1);
        Interf = Pnf;
        Gco = fnGco(f0);
        PdffRecv = Pdff * Gco * Mcbi^2;

        J2 = SnrTh * Interf /PdffRecv ;

        cdfJ2 = fnCDFJbi(J2, sigd, varphi,hbar);
        cdfJ2sim =fnSimCdfJbi(J2 , sigd,varphi,1);
        if(cdfJ2 > 0.1)
            dummy = 0;
        end
        %  cdfJ2sim = 0;
        if(cdfJ2sim < -0.4)
            dummy = 0;
        end
        aaPltYSim(ii,i) = cdfJ2sim;
        aaPltY1(ii,i) = cdfJ2;
        aPltY1(i) = cdfJ2;
        aaPltX(ii,i) = DbPdff;
        aPltX(i) = DbPdff;
        if(i == 200)
            dummy = 0;
        end
    end


    ii
end

%call plt_aaPoutPowerSim to plot

t2=clock;
time =  etime(t2,t1)
z = 3999.9999994/1000;
pltIStart = 1;
pltIEnd = length(asigd);

%



dummy = 0;



