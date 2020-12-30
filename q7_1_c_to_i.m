clear,clc,close all;
data=importdata('input_coordinates_7_1.txt')
x1=data.data(:,1);
x2=data.data(:,2);
L1=50;L2=57;
I=x2.*L1+x1;
fid1=['output_index_7_1','.txt'];
c=fopen(fid1,'w');
fprintf(c,'%s\n','index');
fprintf(c,'%d\n',I);
fclose(c);