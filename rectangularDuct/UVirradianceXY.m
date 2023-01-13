function [E]=UVirradianceXY(ductWidth,ductHieght,xLampPosition,yLampPosition,lampLength,phi)

x=0.01:0.01:(ductWidth);
y=0.01:0.01:(ductHieght);
[x,y]=meshgrid(x,y);

a=((x-xLampPosition).^2 + (y-yLampPosition).^2).^(0.5);
E=UVirradianceR(a,lampLength,phi);
E(isnan(E))=0;
