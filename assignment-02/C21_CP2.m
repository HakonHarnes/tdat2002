for n=[2 5 10]
    [I, J] = meshgrid(1:n, 1:n);
    
    H = 1./(I + J - 1);
    b = ones(n, 1);
    
    x = naive(H, b);
    
    max(abs(H*x-b))
end