% Initialization.
n=13;
A=zeros(n);
b=zeros(n,1);
alpha=sqrt(2)/2;

%Set matrix A, (13*13)
A(1,2)=1;A(1,6)=-1;
A(2,3)=1;
A(3,1)=alpha;A(3,4)=-1;A(3,5)=-alpha;
A(4,1)=alpha;A(3,3)=1;A(3,5)=alpha;
A(5,4)=1;A(5,8)=-1;
A(6,7)=1;
A(7,5)=alpha;A(7,6)=1;A(7,9)=-alpha;A(7,10)=-1;
A(8,5)=alpha;A(8,7)=1;A(8,9)=alpha;
A(9,10)=1;A(9,13)=-1;
A(10,11)=1;
A(11,8)=1;A(11,9)=alpha;A(11,12)=-alpha;
A(12,9)=alpha;A(12,11)=1;A(12,12)=alpha;
A(13,13)=1;A(13,12)=alpha;
%Set result vector b, (13*1)
b(2,1)=10;b(8,1)=15;b(10,1)=20;

%Get result vector f
f=A\b;
f
% Get Cond(A) (p=2)
cond_A = cond(A);
% Set r
r = b-A*f;
% Get 2-Norms of r and b
norm_r = norm(r);
norm_b = norm(b);
% Get result of the bound
bound = cond_A * norm_r/norm_b;
bound

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