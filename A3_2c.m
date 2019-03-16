% Print the result table.
fileID = fopen('cond4.txt','w');
fprintf(fileID, '%4s %16s %16s\r\n','n','U1(n,n)','2^(n-1)');

% Initialization.
n=60;
A = ones(n,n);
A = A-triu(A);
A = eye(n)-A;
A = A + [ones(n-1,1); 0] * [zeros(1,n-1),1];
Q = diag(ones(n-1,1),1);
Q(n,1) = 1;
% compute LU Factorization
[L1, U1, P1] = lu(A);
fprintf(fileID, '%4d %16d %16d\r\n',n,U1(n,n),2^(n-1));
[L2, U2] = lu(A*Q);
fprintf(fileID, 'max of U2 %d\r\n',max(max(abs(U2))));

x=ones(n,1); b=A*x;
y=L1\b;
x1=U1\y;
fprintf(fileID, 'norm(x-x1) %6.4e\r\n',norm(x-x1,inf));

y=L2\b;
z=U2\y;
x2=Q*z;
fprintf(fileID, 'norm(x-x2) %6.4e\r\n',norm(x-x2,inf));

