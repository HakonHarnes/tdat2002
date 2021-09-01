function [ L, U ] = LU( A )
    [n, m ] = size(A);
    
    if m ~= n; error("Matrix not quadratic!"); end
    
    U = A;
    L = zeros(n, n);
    
    for j = 1 : n-1
        if abs(U(j, j)) < eps; error("Zero pivot element"); end
        for i = j+1 : n
            mult = U(i,j)/U(j,j);
            U(i, j+1:n) = U(i, j+1:n) - mult * U(j, j+1:n);
            
            U(i, j) = 0;
            L(i, j) = mult;
        end
    end
    
    L = L + eye(n);
end