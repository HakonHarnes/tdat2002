format long; 

f = @(x) (1 - sec(x)) ./ (tan(x)).^2; 
g = @(x) -1 ./ (sec(x) + 1);

testData = [ 10^-1; 10^-2; 10^-3;  10^-4;  10^ -5; 10^ -6; 10^-7;
             10^-8; 10^-9; 10^-10; 10^-11; 10^-12; 10^-13; 10^-14 ];

original = f(testData); 
modified = g(testData);
diff     = abs(modified - original);

t= table(original, modified, diff); 
t.index = (1:height(t)).'; 
t = t(:, [4 1 2 3])