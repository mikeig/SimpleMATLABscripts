% Print the relative error table for x from -25 to 25.
fileID = fopen('exp2.txt','w');
fprintf(fileID, '%8s %16s\r\n','x','relative error');
for i=-25:25
    r_e = (exp2(i)-exp(i))/exp(i);
    fprintf(fileID, '%8d %16.5f\r\n', i, r_e);
end
fclose(fileID);




