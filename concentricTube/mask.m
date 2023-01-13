function [mask]=mask(ductDiameter,lampDia)

x=0.01:0.01:(ductDiameter);
y=0.01:0.01:(ductDiameter);
[x,y]=meshgrid(x,y);

xCenter=(ductDiameter/2);
yCenter=(ductDiameter/2);

r=((x-xCenter).^2 + (y-yCenter).^2).^(0.5);
mask=r > lampDia/2 & r <= ductDiameter/2;