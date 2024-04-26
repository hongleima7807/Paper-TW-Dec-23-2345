
% pltIStart = 1



    figure(52)
clRed = [1,0,0];clMen = [1,0,1];clBlue = [0,0,1];clGreen = [0,0.8,0];clBlack = [0.1,0.1,0.2];
clBrown = [0.6,0.2,0]; clColor1 = [0.8,0.2,0.9]; clColor2 = [0.8,0.9,0.1]; clColor3 = [0.1,0.9,0.5];
aColor = [clBlue; clMen; clGreen;  clRed;  clBrown; clBlack; clColor1; clColor2; clColor3];
aMarker = ['*:', 'o:', 'd:', '^:', 's:', 'v:','h:', 'p:', 'x'];
markerSize = 7;
lnWidthSim0 = 1.2;
lnWidthSd0 = 0.5 * 1.5 ;
fontSize = 15;
for ii = pltIStart:1: pltIEnd
    
    pltX = aaPltX(ii,:);
    pltY = aaPltYSim(ii,:);
    pltY1 = aaPltY1(ii,:);
   clPtIdx = 2 * (ii-1)+1;
    marker(1) = aMarker(clPtIdx);
    marker(2) = aMarker(clPtIdx+1);
    LNW = 1.5;
    if(ii == pltIEnd)
       markerSize = 8;
        lnWidthSim = lnWidthSim0 * LNW;
        lnWidthSd = lnWidthSd0 * LNW;
    elseif (ii == 2)
        lnWidthSim = lnWidthSim0 * LNW;
        lnWidthSd = lnWidthSd0 * LNW;
       markerSize = 8;
    else
        markerSize = 8;
        lnWidthSim = lnWidthSim0 * LNW;
        lnWidthSd = lnWidthSd0 * LNW;
    end
    
    pointCnt = 15;
    pntStart = 1; 
    pntEnd =  length(pltX);
    aDecretIdx = round(fnGetXArray(pntStart, pntEnd,  pointCnt+2));
    %aDecretIdxe(1) = pntStart + 1;
    
    % pltX = aaPltX(3,:);
    % pltY = aaPltY(3,:);
   % pltY1 = aaPltY1(3,:);
    set(gca,'linewidth',0.5,'fontsize',  fontSize ,'fontname','Times new roman');
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
        % ahplt(ii)= plot(pltX(aDecretIdx(i)), pltY(aDecretIdx(i)), marker, 'color', aColor(ii,:), 'MarkerSize',markerSize,  'LineWidth', lnWidthSim-0.2);
         hold on
        % ahplt(ii)= plot(pltX(aDecretIdx(i)), pltY1(aDecretIdx(i)), marker, 'color', aColor(ii,:), 'MarkerSize',markerSize);
          ahplt(ii)= plot(pltX(aDecretIdx(i)), pltY1(aDecretIdx(i)), marker, 'color', aColor(ii,:), 'MarkerSize',markerSize,  'LineWidth', lnWidthSim-0.2);
         hold on
    end


end
% draw the zhbar 


% lblx(1) = zhbar;lblx(2) = zhbar;
% lbly(1) = 0;    lbly(2) = 1;
% plot(lblx, lbly, '--', 'color', [0.64, 0.08, 0.18] )
% text(lblx(2), lbly(2)-0.05, '\Theta_1^{\vartheta=0.8}', 'fontsize', fontSize, 'fontname','arial')

%  zhbarD2 = 4-4*hbar0;
% lblx(1) = zhbarD2;lblx(2) = zhbarD2;
% lbly(1) = 0;    lbly(2) = 1;
% plot(lblx, lbly, '--', 'color', [0.64, 0.08, 0.18] )
% text(lblx(2), lbly(2)-0.05, '\Theta_2^{\vartheta=0.8}', 'fontsize', fontSize, 'fontname','arial')

% zhbarD1 = 1-1*hbar0;
% lblx(1) = zhbarD1;lblx(2) = zhbarD1;
% lbly(1) = 0;    lbly(2) = 1;
% plot(lblx, lbly, '--', 'color', [0.64, 0.08, 0.18] )
% text(lblx(2), lbly(2)-0.05, '\Xi^{\vartheta=0.8}', 'fontsize', fontSize, 'fontname','arial')
% 
% for ii = 1:1: sigLen
%    zhbarD1 = aEJ2(ii);
%    lbly(1) = zhbarD1; lbly(2) = zhbarD1;
%    lblx(1) = 0;       lblx(2) = 1.2;
%    plot(lblx, lbly, '--', 'color', [0.64, 0.08, 0.18] )
%    text(lblx(2), lbly(2)-0.05, 'Expecation()', 'fontsize', fontSize, 'fontname','arial')
% end
bUp=1; %%%%%delme
if(bUp == 1)
  %  axis([-0.01 4.5,0,1])
else
  %  axis([-0.01 1.125,0,1])
end
%legend([hPltSim,  hPltSd, ahplt(1), ahplt(2), ahplt(3), ahplt(4),ahplt(5)], 'Simulation', 'Calculation', ...
% ['C1:|\sigma|=', num2str(asigm(1), '%1.2f'), ', \vartheta=',  num2str(hbar0)],...
% ['C2:|\sigma|=', num2str(asigm(2), '%1.2f'), ', \vartheta=',  num2str(hbar0)],...
% ['C3:|\sigma|=', num2str(asigm(3), '%1.2f'), ', \vartheta=',  num2str(hbar0)], ...
% ['C4:|\sigma|=', num2str(asigm(4), '%1.2f'), ', \vartheta=',  num2str(hbar0)], ...
% ['C5:|\sigma|=', num2str(asigm(length(asigm)), '%1.2f'), ', \vartheta=',  num2str(hbar)]);
% ['|\sigma|=', num2str(asigm(6), '%1.2f'), ', \vartheta=',  num2str(hbar)]);
legend([hPltSim,  hPltSd, ahplt(1), ahplt(2), ahplt(3), ahplt(4), ahplt(5), ahplt(6), ahplt(7), ahplt(8) ], '(Monte Carlo) Averages', '(Theoretical) Expectations', ...
[ '\phi_i=',   num2str(avarphi(1)), '^o'],...
[  '\phi_i=',  num2str(avarphi(2)), '^o'],...
[  '\phi_i=',  num2str(avarphi(3)), '^o'],...
[  '\phi_i=',  num2str(avarphi(4)), '^o'],...
[  '\phi_i=',  num2str(avarphi(5)), '^o'],...
[  '\phi_i=',  num2str(avarphi(6)), '^o'],...
[  '\phi_i=',  num2str(avarphi(7)), '^o'],...
['\phi_i=',  num2str(avarphi(8)), '^o'])

% ['|\sigma|=', num2str(asigm(6), '%1.2f'), ', \vartheta=',  num2str(hbar)]);
ylabel('Expectation/Average J_{b,i}')
xlabel('Avarage AVI (\sigma^2_i)')
grid on;


 t2=clock;
time =  etime(t2,t1)
z = 3999.9999994/1000;
% az(i+1) = z;
% fsr =@(t) exp(1/2*(-5 + t + z./t))./(2* sigma2 * pi* sqrt(4 - t).*t.*sqrt(1 - z./t));
%    %fsr1 = fsr(0.1)
% Fsr(i+1) = quadgk(fsr,0,4);


dummy = 0;





