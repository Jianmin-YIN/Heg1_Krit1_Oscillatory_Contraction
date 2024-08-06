Count=0;
Unroll=[];
for i=72:1:125
    Count=Count+1;
    Array=peri_info{i};
    IntArray=Array(:,3);
    ResizedArray=imresize(IntArray,[500,1]);
    Unroll(Count,:)=ResizedArray';
end

ResizedUnroll=imresize(Unroll,[120,500]);

imshow(ResizedUnroll,[]);
imwrite(uint16(ResizedUnroll),'osci.tif')

set(gcf, 'units','normalized','outerposition',[0 0 1 1]); % Maximize figure.
% Construct new colormap with 8 rows and 3 columns
% Each row applies to one gray level.
% Create the 8x3 array any way you want.
% Here I'm using the built-in "jet" array
% set up to go over only 8 gray levels.
cmap = jet(8);
% Apply the colormap
colormap(cmap);
colorbar;