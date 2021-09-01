%Version 2
A2 = [10^(-20) 1; 1 2];
b2 = [1; 4];
x2 = naive(A2, b2)

%Version 3
A3 = [1 2; 10^(-20) 1];
b3 = [4; 1];
x3 = naive(A3, b3)