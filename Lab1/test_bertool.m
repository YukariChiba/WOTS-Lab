function [ber, numBits] = test_bertool(EbNo, maxNumErrs, maxNumBits)
import com.mathworks.toolbox.comm.BERTool;

totErr  = 0; 
numBits = 0;

M = 16;
k = log2(M);
n = 1000;
nsamp = 1;

while((totErr < maxNumErrs) && (numBits < maxNumBits))

   if (BERTool.getSimulationStop)
      break;
   end
    
    totErr = totErr + number_of_errors;
    numBits = numBits + n;
   
end

ber = totErr/numBits;