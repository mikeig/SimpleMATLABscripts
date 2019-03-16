function p = perm_d(q)
% Initialization
n = length(q);
temp = q;
result = zeros(n-1,1);
% Exchange
for k = 1:n-1
    temp1 = temp(k);
    result(k) = temp1;
end
p = result;