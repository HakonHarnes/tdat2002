format long; 

nestedVal = nest(50, ones(1, 51), 1.00001)

Q = @(x) (x^51 - 1) / (x - 1);
polyVal = Q(1.00001)

error = nestedVal - polyVal