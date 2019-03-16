% Print the result table for each n if error not larger than 1.
fileID = fopen('cond3.txt','w');

fprintf(fileID, '%12s %12s %12s\r\n','gamma','error(1)','error(2)');
% Initialization.
n=2;
A=zeros(n);
L1=zeros(n);
U1=zeros(n);
b=zeros(n,1);

% %Set matrix A
A(2,1)=1;A(2,2)=1;

%Set vector L1
L1(1,1)=1;L1(1,2)=0;
L1(2,2)=1;
%Set vector U1
U1(2,1)=0;

%Set result vector b
b(1,1)=1;
b(2,1)=2;

%Get result vector x
for k = 1:10
    gamma = 10^(-2*k);
    
    A(1,1)=gamma; A(1,2)=1-gamma;
    L1(2,1)=1/gamma;
    U1(1,1)=gamma;U1(1,2)=1-gamma;
    U1(2,2)=2-1/gamma;
    
    y=L1\b;
    x_hat=U1\y;
% Set residual
    r0=b-A*x_hat;
    z=L1\r0;
    e=U1\z;
    x_a=x_hat+e;
    x=A\b;
    s0=x_a-x;
    fprintf(fileID, '%12.4e %12.4e %12.4e\r\n',gamma,s0(1),s0(2));
end
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
% fclose(fileID);