clear,clc,close all;
data=importdata('input_question_6_polygon');
data1=importdata('input_question_6_points');
xv=[data(:,1)' data(1,1)']';
yv=[data(:,2)' data(1,2)']';
x=data1(:,1);
y=data1(:,2);
len=length(x);
in=zeros(len,1);
for i=1:len
    in(i)=inpolygon(x(i),y(i),xv,yv);
end
fid=['output_question_6','.txt'];
c=fopen(fid,'w');
for j=1:len
    fprintf(c,'%d',x(j));
    fprintf(c,'%s\t','');
    fprintf(c,'%d',y(j));
    fprintf(c,'%s\t','');
    if in(j)==1
        fprintf(c,'%s\n','inside');
    else
        fprintf(c,'%s\n','outside');
    end
    
end
fclose(c);