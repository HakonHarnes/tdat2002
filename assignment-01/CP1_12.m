format long; 

f = @(x)(2*x + 2)^(1/3); 
g = @(x)log(7 - x); 
h = @(x)log(4 - sin(x));

FPI(f, 1, 0.5e-8)
FPI(g, 1, 0.5e-8)
FPI(h, 1, 0.5e-8)