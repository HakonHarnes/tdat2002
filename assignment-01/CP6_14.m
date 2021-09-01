format long; 

f  = @(r) (10/3) * pi * r^2 + (2/3) * pi * r^3 - 60;
Df = @(r) (20/3) * pi * r + 2 * pi * r^2; 

newton = @(x) x - (f(x) / Df(x));

TOL = 0.5e-4; 
r = 1;
i = 0;

while(not(Df(r) == 0))
    newr = newton(r);
    
    if(abs(newr - r) < TOL) 
        r = newr;
        break; 
    end
    
    r = newr;
    i = i + 1;
end

r