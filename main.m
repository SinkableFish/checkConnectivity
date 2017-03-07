radiusPercentCount=zeros(50,50);
nodePercentCount=zeros(50,50);
tryNum=1000;
for i=1:50
    for j=1:100
        count=0;
        for k=1:tryNum
            nodeData=creatRandomNode(i);
            linkData=checkLinks(nodeData,j);
            num=DFS(linkData);
            if length(find(num==1))==i
                count=count+1;
            end
        end
        percent=count/tryNum;
        radiusPercentCount(i,j)=percent;
        nodePercentCount(j,i)=percent;
    end
    if(mod(i,5)==0)
        plot(radiusPercentCount(i,:));
        hold on;
    end
end
% legend('n=10','n=20','n=30','n=40','n=50','n=60','n=70','n=80','n=90','n=100');
legend('n=5','n=10','n=15','n=20','n=25','n=30','n=35','n=40','n=45','n=50');
xlabel('Communication radius');
ylabel('pr[Network is connected]');

figure(2)
for i=1:10
    plot(nodePercentCount(i*5,:));
    hold on;
end
legend('r=10','r=20','r=30','r=40','r=50','r=60','r=70','r=80','r=90','r=100');
xlabel('number of nodes'); 
ylabel('pr[Network is connected]');
% nodeData=creatRandomNode(100);
% linkData=checkLinks(nodeData,10);