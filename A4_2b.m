% Print the result table for each fixed point scheme function.
fileID = fopen('cond2.txt','w');

fprintf(fileID, '%4s %16s %16s %18s\r\n','k','x_k','g(x_k)','|e_k+1|/|e_k|^r');
% Initialization.
tol = 20; x_o=2;

x_i=2.1;
% fixed-point function
gfunc = @(x) (x^2+2)/3;
% try this fixed point scheme
for i = 1 : tol
    temp=x_i;
    x_i=gfunc(x_i);
    c=(x_i-x_o)/(temp-x_o);
    fprintf(fileID, '%4d %16.8e %16.8e %18.8e\r\n',i,temp,x_i,c);
end

fprintf(fileID, '\r\n%4s %16s %16s %18s\r\n','k','x_k','g(x_k)','|e_k+1|/|e_k|^r');
x_i=1.5;
% fixed-point function
gfunc = @(x) sqrt(3*x-2);
% try this fixed point scheme
for i = 1 : tol
    temp=x_i;
    x_i=gfunc(x_i);
    c=(x_i-x_o)/(temp-x_o)^1;
    fprintf(fileID, '%4d %16.8e %16.8e %18.8e\r\n',i,temp,x_i,c);
end

fprintf(fileID, '\r\n%4s %16s %16s %18s\r\n','k','x_k','g(x_k)','|e_k+1|/|e_k|^r');
x_i=1.5;
% fixed-point function
gfunc = @(x) 3-2/x;
% try this fixed point scheme
for i = 1 : tol
    temp=x_i;
    x_i=gfunc(x_i);
    c=(x_i-x_o)/(temp-x_o)^1;
    fprintf(fileID, '%4d %16.8e %16.8e %18.8e\r\n',i,temp,x_i,c);
end

fprintf(fileID, '\r\n%4s %16s %16s %18s\r\n','k','x_k','g(x_k)','|e_k+1|/|e_k|^r');
x_i=1.6;
% fixed-point function
gfunc = @(x) (x^2-2)/(2*x-3);
% try this fixed point scheme
for i = 1 : tol
    temp=x_i;
    x_i=gfunc(x_i);
    c=(x_i-x_o)/(temp-x_o)^2;
    fprintf(fileID, '%4d %16.8e %16.8e %18.8e\r\n',i,temp,x_i,c);
end
fclose(fileID);