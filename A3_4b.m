function q = perm_b(p)
% Initialization
n = length(p)+1;
result = [1:n]';
% Exchange
for k = 1:n-1
    temp1 = result(k);
    temp2 = result(p(k));
    result(k)=temp2;
    result(p(k))=temp1;
end
q = result;