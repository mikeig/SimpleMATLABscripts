function y = calc_det(p)
% Initialization
y=1;
n = length(p)+1;
result = (1:n)';
% Exchange
for k = 1:n-1
    temp1 = result(k);
    temp2 = result(p(k));
    result(k)=temp2;
    result(p(k))=temp1;
end
for k=1:n
    if result(k) ~= k
        y=-1;
        break;
    end
end