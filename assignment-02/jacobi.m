function [ x, i, error ] = jacobi(n, TOL )
    D = spdiags(3 * ones(n, 1), 0, n, n);
    L = spdiags(-ones(n, 1), -1, n, n);
    U = spdiags(-ones(n, 1), 1, n, n);
    
    A = L + D + U;
    
    b = ones(n, 1);
    b([1,n]) = [2, 2];
    
    x = zeros(n,1);
    xcorrect = ones(n, 1);
    
    i = 0;
    while(1)
        i = i + 1;
        x = D \ (b -(L + U) * x);
        
        if(max(abs(x-xcorrect))<TOL) 
            break; 
        end
    end
    
    error = max(abs(A * x - b));
end