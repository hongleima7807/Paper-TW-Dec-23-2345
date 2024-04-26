function [ pout ] = fnSimCdfJbi(z,sigd, varphi,vartheta)
  samples = 5000;
  poutCnt = 0;
  dbgZeroCnt = 0;
  for i = 1:1:samples
      
      li = normrnd(0,sigd);
  
 
      if (li >= vartheta) 
          li = vartheta;
      elseif li <= -vartheta
          li = -vartheta;
      end
      
      Jsd = fnJbi(li,varphi);
      if(Jsd < z)
          poutCnt = poutCnt + 1;
      end
      if(Jsd == 0)
          dbgZeroCnt = dbgZeroCnt + 1;
      end
 end
 pout = poutCnt / samples ;
 dbgZeroCnt;
end
