folderName='./';
fileName='T1_sta_oscilate.tif';
CNum=2;
TID=125;
I = imread([folderName,fileName],TID*CNum-1);
imshow(I,[]);

% figure
% TC = graythresh(Img);
% BW=imbinarize(Img,TC*1.4);
% imshow(BW);

roi = images.roi.Freehand;
draw(roi)
polyX=roi.Position(:,1);
polyY=roi.Position(:,2);

[rowN,colN,~]=size(I);
matbit=zeros(rowN,colN);

[X,Y] = meshgrid(1:1:colN,1:1:rowN);
BW=inpolygon(X, Y, polyX, polyY);

[a,b]=find(BW==1);
[minval,ID]=min(b);
P=[a(ID(1)),b(ID(1))];
imshow(I,[]);
%%
B = bwtraceboundary(BW,P,'W');
[row,col]=size(B);
for i=1:1:row
    B(i,3)=I(B(i,1),B(i,2));
end
hold on
plot(B(:,2),B(:,1),'g','LineWidth',2)
peri_info{TID}=B;
%%
% BWB = bwperim(BW,4);
% 
% P = regionprops(BWB,'perimeter','Area');
% P.Perimeter;
% figure
% imshow(BWB)

