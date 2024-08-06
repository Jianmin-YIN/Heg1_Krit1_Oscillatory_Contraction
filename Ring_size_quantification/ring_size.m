N = 4;
Color = linspecer(N) ;
num= xlsread('ring_size.xlsx',4);
figure
plot(num(:,2),num(:,3),'Color',Color(3,:),'Linewidth',2);
set(gca,'linewidth',2);
set(gca,'FontSize', 16);
xlim([0,240]);