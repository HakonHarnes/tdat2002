% Program 1.2 Fixed-Point Iteration
% Computes approximate solution of g(x)=x
% Input: function handle g, starting guess x0, number of iteration steps k
% Output: Approximate solution xc
function [ x ] = FPI(f, x, TOL)
   while(true)
       result = f(x); 
       
       if(abs(result - x) < TOL) 
           x = result; 
           break; 
       end 
       x = result; 
   end

end