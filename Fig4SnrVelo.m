clc;
clear all;
close all;
tic;

clc;
clear all;
close all;
tic;

Nfft = 16;

%InitMIEnv;
scInitMIEnv;
scRdParam;
scNodeEnv;



% %% for  test
%f0 = 7e+6;
f0 =  10000
f0 = f0 * 1
f = f0;

Us = 5;
Jsr = 1;
Gsr = 1;
Jrd = 1;
Grd = 1;



startx = 3;
vlct = 3;
at(1) = 0;
arsd(1) = startx;
adbPdff =  [37, 0, 370, 20, 10 ];
asigd = [0.4, 0.1, 10]
af = [10000, 10000, 1e+12,10000 * 100, 10000 * 1000 ];
%adbPdff = 
varphi = pi / 6;

%df(1: 2 * dFmax + 1) = 0


thd =  deg2rad(0);

Pn = fnDbToW(dbPn, 1);
Pnf = Pn / bw;



%ser0001y(1) = 4.7748;
%ser0001y(2) = 4.7748;
t = 0;
rsrmax = 65000000;

sigd = 10
hbar = 1;
for ii = 1:1:1
    f = af(ii);
    rsd = 0;
    t = 0;
    dbPdff = fnWToDb(adbPdff(ii), 1) ;
    Pdff = fnDbToW(dbPdff, 1)/bw;
    Pdff = 5 / bw
    sigd = asigd(ii);

    for i = 1:rsrmax
        if(ii > 1)
            dummy = 0;
            if(rsd > 60)
                dummy=0;
            end
        end
        rsd = startx + vlct * t;
        x = rsd * cos(varphi);
        y = 0;
        z = rsd * sin(varphi);
        at(i) = t;
        arsd(i) = rsd;
        Mcbi = fnMbi(x, y, z, f0, 1);
         Interf = Pnf;
        Gco = fnGco(f0);
       PdffRecv = Pdff * Gco * Mcbi^2;
       H2sd = PdffRecv ;  
       J2simonetime = fnSimCdfJbiOnetime(sigd,varphi, hbar);
       PdffRecv = PdffRecv * J2simonetime;
        
       snr = PdffRecv / Pnf;
        capa = log2(1+snr);
        asnr(i) = snr;
        adbSnr(i) = fnWToDb(snr,0);
        % adbSnr(i) = capa * 850;
        t = t + 1/60;
        if(rsd > 100) 
            break;
        end
    end
    
    
    
    
    
    enFigt=1;
    enFigd=0;
    
    if(enFigt ==1)
        if ii == 1
            serx(1) = 0;
            serx(2) = 60;
            
            ser001y(1) = 2.7059;
            ser001y(2) = 2.7059;
            ser0001y(1) = 10 * log10( 4.7748);
            ser0001y(2) = 10 * log10( 4.7748);
            figure(1)
            hpltAt(ii) = plot(at, adbSnr)
            hold on
            grid on
          %  hpltser0001 = plot(serx, ser0001y, '--')
            hold on
           % hpltser001 =  plot(serx, ser001y, 'r:')
            hold on
            grid on
          %  set(gca,'YLim',[0  110])
           set(gca,'XLim',[0  30])
        end
        
    end
    
    if(enFigd == 1)
        serx(1) = 0 ;
        serx(2) = 100;
        
        ser001y(1) = 2.7059;
        ser001y(2) = 2.7059;
        ser0001y(1) = 10 * log10( 4.7748);
        ser0001y(2) = 10 * log10( 4.7748);
        figure(2)
        hpltAt(ii) = plot(arsd, adbSnr);
        hold on
        grid on
          % hpltser0001 =  plot(serx, ser0001y, '--')
          hold on
         % hpltser001 =   plot(serx, ser001y, 'r:')
        hold on
       % set(gca,'YLim',[0  110])
       set(gca,'XLim',[0  100])
        grid on
    end
    
end
if(enFigt == 1)
    figure(1)
    ylabel('Receive SNR (dB)')
    xlabel('Time (Second, velocity=3 m/s, \phi_{road}=30^\circ)')
    set(gca,'linewidth',0.5,'fontsize',  16 ,'fontname','Times New Roman');
      legend([hpltAt(1)],...
        '\sigma_i: 0.4 (BCS distribution)');
    %legend([hpltAt(1),  hpltAt(2), hpltAt(3), hpltAt(4)],...
    % 'f_0=10 KHz (This work)',  'f_0=100 KHz',  'f_0= 1 MHz',  'f_0=10 MHz (Most previous works)')
end
if(enFigd == 1)
    figure(2)
    ylabel('Received SNR (dB)')
    xlabel('Distance (meter, velocity=3 m/s, \phi_{road}=30^\circ)')
    set(gca,'linewidth',0.5,'fontsize',  15 ,'fontname','Times New Roman');
    legend([hpltAt(1)],...
        '\sigma_i: 0.4 (BCS distribution)');
      %  '\sigma_i: 0.0, Transmit Power:0 dBm', ...
        %'\sigma_i: 10,  Transmit Power:370 dBm (If possible)' ...
        
   % text(50, 10, 'SNR (BER = 10^{-4})', 'fontsize', 15, 'fontname','Times New Roman')
   % text(70, 5, 'SNR (BER = 10^{-3})', 'fontsize', 15, 'fontname','Times New Roman')
   % text(70, 40, 'more than 150 m', 'fontsize', 15, 'fontname','Times New Roman')
   % text(70, 30, 'below 30 m', 'fontsize', 15, 'fontname','Times New Roman')
    %  text(lblx(2), lbly(2)-0.05, '\Theta_2^{\vartheta=0.8}', 'fontsize', fontSize, 'fontname','arial')
end

%  figure(2)
%  legend([hpltAt(1),  hpltAt(2), hpltAt(3), hpltAt(4),hpltser0001, hpltser001],...
%        [ 'frequency: 10 KHz',  'frequency: 100 KHz',  'frequency: 1 MHz',  'frequency: 10 MHz (Most previous works)', ...
%         'BER = 10^{-2}', 'BER = 10^{-3}']        );

%adbSnr05 = adbSnr;
adbSnr10 = adbSnr;



















