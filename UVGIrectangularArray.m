clear all %#ok<CLALL>

flow=2000*(12^3*2.54^3/60); %convert flow in [CFM] to [cm^3/s]
z=0.00187;  %UV suseptibility in [cm^2/uj]

ductWidth=20*2.54;
ductHieght=20*2.54;

phi=27.2e6;
lampDia=0.625*2.54;
lampLength=46*2.54;

n=2;
xLampSpacing=ductWidth/(n+1);
m=3;
yLampSpacing=ductHieght/(m+1);

xLampPosition=xLampSpacing;
yLampPosition=yLampSpacing;
mask=ones((ductHieght/0.01),(ductWidth/0.01));
for i=1:n
    for j=1:m        
        mask=maskXY(ductWidth,ductHieght,xLampPosition,yLampPosition,lampDia).*mask;   
        yLampPosition=yLampPosition+yLampSpacing;
    end
    xLampPosition=xLampPosition+xLampSpacing;
    yLampPosition=yLampSpacing;
end

%areaTest=(ductWidth*ductHieght)-(n*m*pi()*lampDia^2/4);
pixles=sum(sum(mask));    %number of pixles in annular cross section
area=pixles*(0.01^2);    %annular area in [cm^2]
velocity=flow/area;
exposureTime=lampLength/velocity;

xLampPosition=xLampSpacing;
yLampPosition=yLampSpacing;
UVdoseAccumulator=zeros((ductHieght/0.01),(ductWidth/0.01));
for i=1:n
    for j=1:m        
        UVdose=UVirradianceXY(ductWidth,ductHieght,xLampPosition,yLampPosition,lampLength,phi).*exposureTime;
        UVdoseAccumulator=UVdoseAccumulator+UVdose;
        yLampPosition=yLampPosition+yLampSpacing;
    end
    xLampPosition=xLampPosition+xLampSpacing;
    yLampPosition=yLampSpacing;  
end
UVdoseAccumulator=UVdoseAccumulator.*mask;
UVdoseAccumulator(isnan(UVdoseAccumulator))=0;
createfigure(UVdoseAccumulator);

populationFraction=exp(-z.*UVdoseAccumulator).*mask;
populationReduction=sum(sum(populationFraction))/(pixles);
percentPopulationReduction=(1-populationReduction)*100;
num2str(percentPopulationReduction,12)
createfigure(populationFraction);