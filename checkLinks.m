function [ linkData ] = checkLinks( location, r )
% plot(location(:,1),location(:,2),'*');
% hold on;
len=length(location(:,1));
linkData=zeros(len,len);
for i=1:len
    for j=i:len
        distance=(location(j,1)-location(i,1)).^2 + (location(j,2)-location(i,2)).^2;
        if(distance<(r*r))
%             if(i~=j)
                linkData(i,j)=1;
                linkData(j,i)=1;
%             end
%             plot([location(j,1), location(i,1)],[location(j,2) location(i,2)]);
%             hold on;
        end
    end
end

