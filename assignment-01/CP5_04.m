format long; 

diff = @(a, b, c) a^2 / (b + c); 

a = 1.2222222; 
b = 3344556600; 
c = sqrt(a^2 + b^2); 

diff(a, b, c) 