files='D:\数据\绘图数据';
Files=dir(fullfile(files));
SET=[];
    for j=3:length(Files)
        DataTemp=[];
        tempStr=strcat(files,'\',Files(j).name);
        Data=[];
        Data=csvread(tempStr);
        SET=[SET Data(1:100,2)];
    end
  
    X=Data(1:100,1);
Y=SET(1:100,:);
p=plot(X,Y,'-');
hold on;

set(p,'LineWidth',2.5);
set(gca,'xtick',(0:20:100));
%set(gca,'XTickLabel',{'00:00','03:00','06:00','09:00','12:00','15:00','18:00','21:00','24:00'});

legend(Files(3).name,Files(4).name,Files(5).name,Files(6).name);
xlabel('Points Number');
ylabel('Least Points');
grid on;

