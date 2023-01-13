function [E]=UVirradianceR(ductDiameter,phi,lampLength,mask)

x=0.01:0.01:(ductDiameter);
y=0.01:0.01:(ductDiameter);
[x,y]=meshgrid(x,y);

xCenter=(ductDiameter/2);
yCenter=(ductDiameter/2);

r=((x-xCenter).^2 + (y-yCenter).^2).^(0.5);

E=UVirradiance(r,phi,lampLength);
E=E.*mask;

%Tube reflection PTFE wall 70% reflection LAMP AT CENTER OF TUBE
E=E.*1.70;

