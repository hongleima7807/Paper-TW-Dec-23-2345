function [ ax, ay ] = fnVUTrack( x, y, startX, startY, endX, endY )
tm = 0.1;
tmCnt = 50;
maxVx = 1/sqrt(2);
maxVy =1/sqrt(2);

vx = unifrnd(-maxVx, maxVx,1, 1);
vy = unifrnd(-maxVx, maxVx,1, 1);
ax(1) = 0;
ay(1) = 0;
i = 1;
while (1)
    % being random walk
    x1 = x + vx * tm;
    y1 = y + vy * tm;

    % 碰到障碍物重新规划路径
    if(x1 <= startX)
        % restart random walk 
        vx = unifrnd(-maxVx, maxVx,1, 1);
        vy = unifrnd(-maxVx, maxVx,1, 1);
        x1 = x;
        y1 = y;
        continue;
     elseif(x1 >= endX)
        vx = unifrnd(-maxVx, maxVx,1, 1);
        vy = unifrnd(-maxVx, maxVx,1, 1);
        x1 = x;
        y1 = y;
        continue;
     elseif(y1 <= startY)
        vx = unifrnd(-maxVy, maxVy,1, 1);
        vy = unifrnd(-maxVy, maxVy,1, 1);
        x1 = x;
        y1 = y;
     %      i1 = i;
        continue;
    elseif(y1 >= endY)
        vx = unifrnd(-maxVy, maxVy,1, 1);
        vy = unifrnd(-maxVy, maxVy,1, 1);
        x1 = x;
        y1 = y;
  %      i1 = i;
        continue;
    end
    
    
    ax(i) = x1;
    ay(i) = y1;
    x = x1;
    y = y1;
    i = i + 1;
   
    if(i > tmCnt)
        break;

    
end


end

