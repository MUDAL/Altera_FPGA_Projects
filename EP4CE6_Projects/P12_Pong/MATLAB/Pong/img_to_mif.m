function img_to_mif(img_in,filename)
    [m,n] = size(img_in); %size of image
    N = m * n; %RAM or ROM depth
    word_len = 1;
    data = reshape(img_in',1,N);
    fid = fopen(filename,'w');
    fprintf(fid,'WIDTH=%d;\n',word_len);
    fprintf(fid,'DEPTH=%d;\n\n',N);
    
    fprintf(fid,'ADDRESS_RADIX=UNS;\n');
    fprintf(fid,'DATA_RADIX=BIN;\n\n');
    fprintf(fid,'CONTENT\t');
    fprintf(fid,'BEGIN\n');
    for i = 0: N - 1
        fprintf(fid,'\t%d\t:\t%d;\n',i,data(i + 1));
    end
    fprintf(fid,'END;\n');
    fclose(fid);
end