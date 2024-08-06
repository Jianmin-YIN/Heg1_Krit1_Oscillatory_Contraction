N = 4;
Color = linspecer(N) ;
num= xlsread('ring_size_mut.xlsx',4);
figure
plot(num(:,5),num(:,6),'Color',Color(1,:),'Linewidth',2);
set(gca,'linewidth',2);
set(gca,'FontSize', 16);
xlim([0,85]);