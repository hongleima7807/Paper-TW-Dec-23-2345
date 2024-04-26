function [ average ] = fnSimAverageJ2(sigd, varphi,vartheta)
samples = 5000;
poutCnt = 0;
sumJsd = 0;
vartheta=1;
for i = 1:1:samples
      li = normrnd(0,sigd);
      if (li >= vartheta) 
          li = vartheta;
      elseif li <= -vartheta
          li = -vartheta;
      end
            
      Jsd = fnJbi(li,varphi);
      sumJsd = sumJsd + Jsd;
    
end
average = sumJsd / samples ;

end

