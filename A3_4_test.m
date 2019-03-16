% Print the result table for each n if error not larger than 1.
fileID = fopen('cond5.txt','w');
p=[5,4,9,10,6,8,10,9,10];
x=(1:10)';
fprintf(fileID, '%6s','p[]=');
fprintf(fileID, '%2d ',p);
fprintf(fileID, '\r\n%6s','x[]=');
fprintf(fileID, '%2d ',x);

% Initialization.
y1=perm_a(p,x);
q=perm_b(p);
y2=perm_c(q,x);
p1=perm_d(q);
% Print
fprintf(fileID, '\r\n%6s','y1[]=');
fprintf(fileID, '%2d ',y1);
fprintf(fileID, '\r\n%6s','q[]=');
fprintf(fileID, '%2d ',q);
fprintf(fileID, '\r\n%6s','y2[]=');
fprintf(fileID, '%2d ',y2);
fprintf(fileID, '\r\n%6s','p1[]=');
fprintf(fileID, '%2d ',p1);