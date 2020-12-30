clear,clc,close all;
data=importdata('input_index_7_1.txt');
I=data.data;
L1=50;L2=57;
len=length(I);
x1=zeros(len,1);
x2=x1;
for i=1:len
    x2(i)=floor(I(i)/L1);
    x1(i)=mod(I(i),L1);
end
fid=['output_coordinates_7_1','.txt'];
c=fopen(fid,'w');
fprintf(c,'%s','x1');
fprintf(c,'%s\t','');
fprintf(c,'%s\n','x2');
for j=1:len
    fprintf(c,'%d',x1(j));
    fprintf(c,'%s\t','');
    fprintf(c,'%d\n',x2(j));
end
fclose(c);
