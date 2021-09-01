%Task a
A1 = [3 1 2; 6 3 4; 3 1 5];
b1 = [0; 1; 3]; 

[L1, U1 ] = LU(A1); 
x1 = LUSolver(L1, U1, b1) 

%Task b
A2 = [4 2 0; 4 4 2; 2 2 3];
b2 = [2; 4; 6]; 

[L2, U2 ] = LU(A2); 
x2 = LUSolver(L2, U2, b2) 