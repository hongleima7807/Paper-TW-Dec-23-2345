
clear all
clc;
clear;
close all;


sigma = 0.5
minY = -100;
maxY = 100;
minX = -100;
maxX = 100;

ax = fnGetXArray(-100, 100, 200);
ay = fnGetXArray(-100, 100, 200);
aEJ2 = 0;
aJ20 = 0;
aTxtX = 0;
aTxtY = 0;
aTxtEJ2 = 0;
xTxtInterv = 25;
yTxtInterv = 25;

pointCnts = 1;
itx = 0;
ity = 0;
lenX = length(ax);
lenY = length(ay);
txtPointCnt = 1;
for ii = 1:1:length(ay)
    dummy = 0;

    for i = 1:1:length(ax)
        z_i = 20;
        x_i = ax(i);
        y_i = ay(ii);
        
        pltaX(pointCnts) = x_i;
        pltaY(pointCnts) = y_i;
        varphi_r = 1*pi/8;
        varphi_r = atan(0/4);
        if(abs(z_i) < 0.6)
            dummy = 0;
        end
        
        varphi_i = fnGetVarphi(x_i, y_i, z_i, varphi_r);
        aVarphi(pointCnts) = varphi_i;
        
        sigma = 0.5;
        EJ2= fnEJ2(sigma, varphi_i);
        J2 = fnJbi(0, varphi_i);
        if(ii==1) && (i == 1)
        
           EJ2 = 1.0;
          J2 = 1.0;
        
        elseif(ii ==  length(ay)-1) && (i == length(ax)-1)
    %          EJ2 = 0.0;
     %         J2 = 0.0;
        end
            
        
        
        Div = ( EJ2- J2);
        aEJ2(pointCnts)  = EJ2;
        aJ2(pointCnts) = J2;
        aDiv(pointCnts) =  Div;
        aDivLog(pointCnts) = log(aDiv(pointCnts));
        
        if (mod(ii, yTxtInterv) == 0) &&  (mod(i, xTxtInterv) == 1)
            aTxtX(txtPointCnt) = x_i;
            aTxtY(txtPointCnt) = y_i;
            aTxtEJ2(txtPointCnt) = EJ2;
            txtPointCnt = txtPointCnt + 1;
        end
      
        
        if(aDiv(pointCnts) < 0.001) 
            dummy=0;
        end
        
        if(varphi_i > pi/2.1)
            dummy = 0
        end;
        
        if(pointCnts > 66)
            dummy = 0;
        end
        

        pointCnts = pointCnts + 1;
    end
end

dummy = 1

pltN=50



maxEJ2 = max(aEJ2);
minEJ2 = min(aEJ2);
maxEJ2 = 1;
minEJ2 = 0;
stepEJ2 = (maxEJ2 - minEJ2)/pltN;



pltaXi = linspace(minX,maxX,pltN);
pltaYi = linspace(minY,maxY,pltN);

[xx,yy] = meshgrid(pltaXi,pltaYi);

maxJ2 = max(aJ2);
minJ2 = min(aJ2);
maxJ2 = 1;
minJ2 = 0;
stepJ2 = (maxJ2 - minJ2)/pltN;

maxDiv = max(aDiv);
minDiv = min(aDiv);


stepDiv = (maxDiv - minDiv)/pltN;



figure(1)
zz = griddata(pltaX,pltaY,aEJ2,xx,yy);
zz(pltN, pltN) = 0;
aContrVEJ2 = minEJ2:stepEJ2:maxEJ2;
 shading flat
[ctC,ctH ]= contourf(xx,yy,zz,aContrVEJ2,'linestyle','none');
set(gca,'linewidth',0.5,'fontsize',18,'fontname','arial');

xlabel('x(m)','fontname','arial', 'fontsize', 18);ylabel(' y( m))','fontname','arial', 'fontsize', 18);
hold on
grid on
for i=1:1:length(aTxtEJ2)
      text(aTxtX(i)+0.01,aTxtY(i)+0.01,num2str(aTxtEJ2(i), '%1.2f'),'fontname','arial', 'fontsize', 18, 'color','red' ); 
      hold on;%加上0.01使标号和点不重合，可以调整
end
pltDstHandle = plot(0,0,'k^-')

 text(100,100,['Expectation(\sigma_i=',num2str(sigma, '%1.2f,'), '\phi_{road}=', num2str(rad2deg(varphi_r), '%1.2f^o)')],'fontname','arial', 'fontsize', 18, 'color','red' ); 
  

figure(2)
zz2 = griddata(pltaX,pltaY,aJ2,xx,yy);
zz2(pltN, pltN) = 0;
aContrVJ2 = minJ2:stepJ2:maxJ2;
 shading flat
[ctC2,ctH2 ]= contourf(xx,yy,zz2,aContrVJ2);


figure(3)
zz3 = griddata(pltaX,pltaY,aDiv,xx,yy);
aContrDiv = minDiv:stepDiv:maxDiv;
 shading flat
[ctC3,ctH3 ]= contourf(xx,yy,zz3,aContrDiv);

