function [ dataNum ] = DFS(data)
% UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
top=1;
stack(top)=1;
len=length(data(1,:));
dataNum=zeros(1,len);
while top~=0
    preLength=length(stack);
    i=stack(top);
    for j=1:len
        if data(i,j)==1 && ~dataNum(j)
            top=top+1;
            stack(top)=j;
            dataNum(j)=1;
            break;
        end
    end
    if length(stack)==preLength
        stack(top)=[];
        top=top-1;
    end
end

