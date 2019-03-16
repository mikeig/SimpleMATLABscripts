% Print the result table for each n if error not larger than 1.
fileID = fopen('cond1.txt','w');
fprintf(fileID, '%2s %16s %18s %12s %14s\r\n','n','relative_err','Cond(H)','log_10(CondH)','correct_digits');
% Initialization
err=0;
n=2;
cond_H = []; num = [];
while err<=1
    H=hilb(n);
    x=ones(n,1);
    b=H*x;
    x_hat=H\b;
    r=b-H*x_hat;
    err=norm(x-x_hat,Inf);
    cond_H(n)=cond(H,Inf);
    num(n)=n;
    % print n and the relative error
    fprintf(fileID, '%2d %16d %18d %12f %14d\r\n',n,err,cond_H(n),log10(cond_H(n)),round(-log10(err)));
    n=n+1;
%         fprintf(fileID, '%8d %16d %16d\r\n', i,i-x1, r);
end
plot(num,log10(cond_H))


% x1 = 1.0e-8;
% % Print the result table for x close to 0.
% fileID = fopen('cond1.txt','w');
% fprintf(fileID, '%8s %16s %16s\r\n','x^','x^-x','tan(x)');
% for i = 1.0e-7 + x1 : -1.0e-8 : x1
%     r = tan(i);
%     fprintf(fileID, '%8d %16d %16d\r\n', i,i-x1, r);
% end
% fclose(fileID);

