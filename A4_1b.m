% Print the result table for each n, Secant method.
fileID = fopen('cond1b.txt','w');

fprintf(fileID, '%4s %20s %20s\r\n','n','x(n)','x(n)-sqrt(2)');
%fprintf(fileID, '%4s %12s %12s %18s\r\n','k','x_k','g(x_k)','|e_k+1|/|e_k|^r');
% Initialization.
tol = 7; x_0=1; x_1=2;
% Newton's function
func = @(x) x^2-2;
x_n=x_1; x_nn=x_0; 
% try this fixed point scheme
for n = 0 : tol
    temp=x_n;
    x_n=x_n-func(x_n)*(x_n-x_nn)/(func(x_n)-func(x_nn));
    fprintf(fileID, '%4d %20.15f %20.15f\r\n',n,x_nn,x_nn-sqrt(2));
    x_nn=temp;
end
fclose(fileID);