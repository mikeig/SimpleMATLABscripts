function y = perm_a(p,x)
result = x;
n = length(p)+1;
for k = 1:n-1
    temp1 = result(k);
    temp2 = result(p(k));
    result(k)=temp2;
    result(p(k))=temp1;
end
y = result;