function [mask]=maskXY(ductWidth,ductHieght,xLampPosition,yLampPosition,lampDia)

x=0.01:0.01:(ductWidth);
y=0.01:0.01:(ductHieght);
[x,y]=meshgrid(x,y);

a=((x-xLampPosition).^2 + (y-yLampPosition).^2).^(0.5);
mask=a > lampDia/2;