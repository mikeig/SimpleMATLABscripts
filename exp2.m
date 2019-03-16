function y = exp2(x)
temp = 0;
k = 0;
result = 1;
if x < 0
    x_in = -x;
else
    x_in = x;
end
while result ~= temp
    temp = result;
    k=k+1;
    result = result + x_in^k / factorial(k);
end
if x < 0
    y = 1/result;
else
    y = result;
end





