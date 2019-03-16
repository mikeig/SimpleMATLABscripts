% Print the result table for each n, Newton's method.
fileID = fopen('cond1a.txt','w');

fprintf(fileID, '%4s %20s %20s\r\n','n','x(n)','x(n)-sqrt(2)');
%fprintf(fileID, '%4s %12s %12s %18s\r\n','k','x_k','g(x_k)','|e_k+1|/|e_k|^r');
% Initialization.
tol = 5; x_0=1;

% Newton's function
func = @(x) x^2-2;
func_d = @(x) 2*x;
x_n=x_0;
% try this fixed point scheme
for n = 0 : tol
    temp=x_n;
    x_n=x_n-func(x_n)/func_d(x_n);
    fprintf(fileID, '%4d %20.15f %20.15f\r\n',n,temp,temp-sqrt(2));
end
fclose(fileID);