
% pltIStart = 1



%*
% o	Circle
% +	Plus sign
% *	Asterisk
% .	Point
% x	Cross
% s	Square
% d	Diamond
% ^	Upward-pointing triangle
% v	Downward-pointing triangle
% >	Right-pointing triangle
% <	Left-pointing triangle
% p	Pentagram
% h	Hexagram
% 





  figure(52)
clRed = [1,0,0];clMen = [1,0,1];clBlue = [0,0,1];clGreen = [0,0.8,0];clBlack = [0.1,0.1,0.2];
clBrown = [0.6,0.2,0]; clColor1 = [0.8,0.2,0.9]; clColor2 = [0.8,0.9,0.1]; clColor3 = [0.1,0.9,0.5];
aColor = [clBlue; clMen; clGreen;  clRed;  clBrown; clBlack; clColor1; clColor2; clColor3];
aMarker = ['*:', 'o:', 'd:', '^:', 's:', 'v:','h:', 'p:', 'x'];
markerSize = 7;
lnWidthSim0 = 1.6;
lnWidthSd0 = 0.5;
fontSize = 15;
for ii = pltIStart:1: pltIEnd
    
    pltX = aaPltX(ii,:);
    pltY = aaPltYSim(ii,:);
    pltY1 = aaPltY1(ii,:);
   clPtIdx = 2 * (ii-1)+1;
    marker(1) = aMarker(clPtIdx);
    marker(2) = aMarker(clPtIdx+1);
    if(ii == pltIEnd)
       markerSize = 11;
        lnWidthSim = lnWidthSim0;
        lnWidthSd = lnWidthSd0;
    elseif (ii == 2)
        lnWidthSim = lnWidthSim0 * 1;
        lnWidthSd = lnWidthSd0 * 1;
       markerSize = 11;
    else
        markerSize = 11;
        lnWidthSim = lnWidthSim0;
        lnWidthSd = lnWidthSd0;
    end
    
    pointCnt = 15;
    pntStart = 1; 
    pntEnd =  length(pltX);
    aDecretIdx = round(fnGetXArray(pntStart, pntEnd,  pointCnt+2));
    %aDecretIdxe(1) = pntStart + 1;
    
    % pltX = aaPltX(3,:);
    % pltY = aaPltY(3,:);
   % pltY1 = aaPltY1(3,:);
    set(gca,'linewidth',0.5,'fontsize',  fontSize ,'fontname','arial');
    hPltSimL = plot(pltX, pltY, ':', 'color', aColor(ii,:), 'LineWidth', lnWidthSim);
    hold on
    hPltSim = plot(pltX(10), pltY1(10), 'k:',  'LineWidth', lnWidthSim, 'MarkerSize', markerSize);
    hold on
    hPltSdL = plot(pltX, pltY1,'-', 'color', aColor(ii,:), 'LineWidth', lnWidthSd);
    hold on
    hPltSd = plot(pltX(1), pltY1(1), 'k-',  'LineWidth', lnWidthSd, 'MarkerSize', markerSize);
    hold on
    for i = 1:1:length(aDecretIdx)
        %colorPoint
         ahplt(ii)= plot(pltX(aDecretIdx(i)), pltY(aDecretIdx(i)), marker, 'color', aColor(ii,:), 'MarkerSize',markerSize,  'LineWidth', lnWidthSim-0.2);
         hold on
        % ahplt(ii)= plot(pltX(aDecretIdx(i)), pltY1(aDecretIdx(i)), marker, 'color', aColor(ii,:), 'MarkerSize',markerSize);
         hold on
    end


end
% draw the zhbar 
text(1.0,0.2,['(\phi_i=',num2str(rad2deg(varphi),'%1.0f^o)')],  'fontsize', fontSize, 'fontname','arial' )

zhbar = (1- hbar0) * (1 + 3 * hbar0);
zhbar = (1- 0.1);

lblx(1) = zhbar;lblx(2) = zhbar;
lbly(1) = 0;    lbly(2) = 1;


%plot(lblx, lbly, '--', 'color', [0.64, 0.08, 0.18] )
%text(lblx(2), lbly(2)-0.05, '\Theta_1^{\vartheta=0.8}', 'fontsize', fontSize, 'fontname','arial')

 zhbarD2 = 1-1*hbar0;
lblx(1) = zhbarD2;lblx(2) = zhbarD2;
lbly(1) = 0;    lbly(2) = 1;
%plot(lblx, lbly, '--', 'color', [0.64, 0.08, 0.18] )
%text(lblx(2), lbly(2)-0.05, '\Theta_2^{\vartheta=0.8}', 'fontsize', fontSize, 'fontname','arial')

    zhbarD1 = 1+3*hbar0;
lblx(1) = zhbarD1;lblx(2) = zhbarD1;
lbly(1) = 0;    lbly(2) = 1;
%%% plot(lblx, lbly, '--', 'color', [0.64, 0.08, 0.18] )
%%% text(lblx(2), lbly(2)-0.05, '\Xi^{\vartheta=0.8}', 'fontsize', fontSize, 'fontname','arial')
%%%%%axis([-0.01 1.2,0,1])
% legend([hPltSim,  hPltSd, ahplt(1), ahplt(2), ahplt(3), ahplt(4),ahplt(5),ahplt(6),ahplt(7)], 'Simulation', 'Calculation', ...
% ['C1:|\phi_i|=', num2str(aphi(1), '%1.2f')],...
% ['C2:|\phi_i|=', num2str(aphi(2), '%1.2f')],...
% ['C3:|\phi_i|=', num2str(aphi(3), '%1.2f')], ...
% ['C4:|\phi_i|=', num2str(aphi(4), '%1.2f')], ...
% ['C5:|\phi_i|=', num2str(aphi(5), '%1.2f')], ...
% ['C6:|\phi_i|=', num2str(aphi(6), '%1.2f')], ...
% ['C7:|\phi_i|=', '\infty'  ]);


legend([hPltSim,  hPltSd, ahplt(1), ahplt(2), ahplt(3), ahplt(4),ahplt(5),ahplt(6),ahplt(7),ahplt(8)], 'Simulation', 'Calculation', ...
['C1:\sigma_i=', num2str(asigd(1), '%1.2f')],...
['C2:\sigma_i=', num2str(asigd(2), '%1.2f')],...
['C3:\sigma_i=', num2str(asigd(3), '%1.2f')], ...
['C4:\sigma_i=', num2str(asigd(4), '%1.2f')], ...
['C5:\sigma_i=', num2str(asigd(5), '%1.2f')], ...
['C4:\sigma_i=', num2str(asigd(6), '%1.2f')], ...
['C5:\sigma_i=', num2str(asigd(7), '%1.2f')], ...
['C6:\sigma_i=', num2str(asigd(8), '%1.2f')]);




%['|\phi|=', num2str(asigm(6), '%1.2f'), ', \vartheta=',  num2str(hbar)]);
% legend([hPltSim,  hPltSd, ahplt(1), ahplt(2), ahplt(3), ahplt(4),ahplt(5)], 'Simulation', 'Calculation', ...
% ['C1:|\phi_S|=', num2str(asigs(1), '%1.2f'),  ', |\phi_D|=',  num2str(aphi(1), '%1.2f'), ',\vartheta=',   num2str(ahbar(1))],...
% ['C2:|\phi_S|=', num2str(asigs(2), '%1.2f'),  ', |\phi_D|=',  num2str(aphi(2), '%1.2f'), ', \vartheta=',  num2str(ahbar(2))],...
% ['C3:|\phi_S|=', num2str(asigs(3), '%1.2f'), ', |\phi_D|=',   num2str(aphi(3), '%1.2f'), ', \vartheta=',  num2str(ahbar(3))], ...
% ['C4:|\phi_S|=', num2str(asigs(4), '%1.2f'),  ', |\phi_D|=',  num2str(aphi(4), '%1.2f'), ', \vartheta=',  num2str(ahbar(4))], ...
% ['C5:|\phi_S|=', num2str(asigs(5), '%1.2f'),   ', |\phi_D|=', num2str(aphi(5), '%1.2f'), ', \vartheta=',  num2str(ahbar(5))]);
% ['|\phi|=', num2str(asigm(6), '%1.2f'), ', \vartheta=',  num2str(hbar)]);
ylabel('Outage Probability')
xlabel('Transmit Power (P_{b,i})')
grid on;


 t2=clock;
time =  etime(t2,t1)
z = 3999.9999994/1000;
% az(i+1) = z;
% fsr =@(t) exp(1/2*(-5 + t + z./t))./(2* phi2 * pi* sqrt(4 - t).*t.*sqrt(1 - z./t));
%    %fsr1 = fsr(0.1)
% Fsr(i+1) = quadgk(fsr,0,4);


dummy = 0;





