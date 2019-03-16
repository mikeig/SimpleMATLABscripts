% Print the result table for each pressure p.
fileID = fopen('cond3.txt','w');

fprintf(fileID, '%12s %12s %12s %12s\r\n','temperature T','pressures p','volume v','pv=RT v');
% Initialization.
R=0.082054;
a=3.592;
b=0.04267;
T=300;
% Waal function
waalfunc = @(R,T,a,b,v,p) (p+a/(v^2))*(v-b)-R*T;
% p = 1 atm
x0 = [24 25];
p = 1;
myfun = @(v) waalfunc(R,T,a,b,v,p);
x = fzero(myfun, x0);
fprintf(fileID, '%10d K  %8d atm %12.4e %12.4e\r\n',T,p,x, R*T/p);
% p = 10 atm
x0 = [2 3];
p = 10;
myfun = @(v) waalfunc(R,T,a,b,v,p);
x = fzero(myfun, x0);
fprintf(fileID, '%10d K  %8d atm %12.4e %12.4e\r\n',T,p,x, R*T/p);
% p = 100 atm
x0 = [1/16 1];
p = 100;
myfun = @(v) waalfunc(R,T,a,b,v,p);
x = fzero(myfun, x0);
fprintf(fileID, '%10d K  %8d atm %12.4e %12.4e\r\n',T,p,x, R*T/p);
fclose(fileID);




%Get result vector x
% % Get Cond(A) (p=2)
% cond_A = cond(A);
% % Set r
% r = b-A*f;
% % Get 2-Norms of r and b
% norm_r = norm(r);
% norm_b = norm(b);
% % Get result of the bound
% bound = cond_A * norm_r/norm_b;
% bound

% for i = 1.0e-7 + x1 : -1.0e-8 : x1
%     r = tan(i);
%     fprintf(fileID, '%8d %16d %16d\r\n', i,i-x1, r);
% end
% fclose(fileID);
% 
% x2 = pi/2 - 1.0e-8;
% % Print the result table for x close to pi/2.
% fileID = fopen('cond2.txt','w');
% fprintf(fileID, '%8s %16s %16s\r\n','x^','x-x^','tan(x)');
% for i = x2 - 1.0e-7 : 1.0e-8 : x2
%     r = tan(i);
%     fprintf(fileID, '%8d %16d %16d\r\n', i, x2-i, r);
% end
% 