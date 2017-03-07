function [ location ] = creatRandomNode( num )
location=zeros(num,2);
for i=1:num
    x=ceil(rand*100);
    y=ceil(rand*100);
    location(i,1)=x;
    location(i,2)=y;
end
end