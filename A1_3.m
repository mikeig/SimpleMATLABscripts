x1 = 1.0e-8;
% Print the result table for x close to 0.
fileID = fopen('cond1.txt','w');
fprintf(fileID, '%8s %16s %16s\r\n','x^','x^-x','tan(x)');
for i = 1.0e-7 + x1 : -1.0e-8 : x1
    r = tan(i);
    fprintf(fileID, '%8d %16d %16d\r\n', i,i-x1, r);
end
fclose(fileID);

x2 = pi/2 - 1.0e-8;
% Print the result table for x close to pi/2.
fileID = fopen('cond2.txt','w');
fprintf(fileID, '%8s %16s %16s\r\n','x^','x-x^','tan(x)');
for i = x2 - 1.0e-7 : 1.0e-8 : x2
    r = tan(i);
    fprintf(fileID, '%8d %16d %16d\r\n', i, x2-i, r);
end
fclose(fileID);