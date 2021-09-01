function [ x ] = naive(A, b )
    [n , ~] = size(A);
    a = [A b];

    for j = 1 : n-1
        for i = j+1 : n
            mult = a(i,j) / a(j, j); 
            a(i, j+1:n+1) = a(i, j+1 : n+1) - mult * a(j, j+1 : n+1);
            a(i, j) = 0;
        end
    end
    
    x = zeros(n, 1);
    b = a(:, n+1);
    
    x(n) = b(n) / a(n, n);
    
    for i = n-1 : -1 : 1
        x(i) = (b(i) - a(i, i+1 : n) * x(i+1 : n)) / a(i, i);
    end
end