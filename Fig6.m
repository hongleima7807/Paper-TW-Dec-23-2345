clear all
clc;
clear;
close all;

%addpath('cdf_function')
% scInitMIEnv;
% scRdParam;
% scNodeEnv;
% Pn = fnDbToW(dbPn, 1);
% Pnf = Pn / bw;
% DR = 5 ;  %data rate
% % pdfFj2;
% f = 10000;
% f0 = 10000;
% hbar = 0.1;
% hbar0 = hbar;
% bUp = 0;


%asigs = [   0.6, 0.8, 0.6];
%asigd = [   0.5, 0.9, 0.5];
ahbar =  [   0.33, 0.66, 1.0];
abup = [0,0,0,0];

avarphi = [-60, -30, 0, 30, 45. 60, 90, 180];

varphilen = length(avarphi);
t1=clock;

%result_record(1:3,i) = x_current;
cnt = 0;
avarphiInfSigma(1) = 0;

for ii = 1:1: varphilen
     hbar =1;
     varphi = deg2rad( avarphi(ii));
     %varphi = 0;
     aSig = fnGetXArray(0.00001,150,100);
       % aEJ2(ii) = fmEXd(sigd, hbar );
      %  averageJ =fnSimAverageXd(sigd,hbar, bUp);
 

     fprintf('%d=\n',ii);
   
     
     % s2s = sigs^2;
     % s2d = sigd^2;

    for(i = 1:1:length(aSig))
        sig = aSig(i);
        cnt = cnt + 1;
       % sig = aJ2(i);

        EJ2= fnEJ2(sig, varphi );
     %   dbgEJ2 = dbgfmEXd(sig, 1);
        averageJ =fnSimAverageJ2(sig,varphi,1);
       avarphiInfSigma(ii) = fnEJ2(10^30, varphi);
        if (mod(i,10) == 0)
          fprintf('%d=', i);
        end
        %cdfJ2sim =0;
 
        aaPltYSim(ii,i) = averageJ;
        aaPltY1(ii,i) = EJ2;
%        dbgaaPltY1(ii,i) = dbgEJ2;
        aaPltX(ii,i) = sig;
        if(i == 200)
            dummy = 0;
        end
    end
    figure(2)
    plot(aaPltX(ii,:), aaPltYSim(ii,:), 'r-*');
    hold on
     plot(aaPltX(ii,:), aaPltY1(ii,:), 'b-');
    hold on
    % plot(aaPltX(ii,:), dbgaaPltY1(ii,:), 'k-');
    hold on    
end


t2=clock;
time =  etime(t2,t1)
z = 3999.9999994/1000;
pltIStart = 1;
pltIEnd = length(avarphi);
plt_aaXYEJ2Sim;

dummy = 0;





