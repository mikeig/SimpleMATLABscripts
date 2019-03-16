function y = perm_c(q,x)
% Initialization
n = length(q);
result = zeros(n,1);

% Exchange
for k = 1:n
    result(k) = x(q(k));
end
y = result;