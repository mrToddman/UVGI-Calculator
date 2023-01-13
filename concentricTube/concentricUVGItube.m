clear all %#ok<CLALL>

flow=6.25*(12^3*2.54^3/60); %convert flow in [CFM] to [cm^3/s]
z=0.00187;  %UV suseptibility in [cm^2/uj]

ductDiameter=round(5.61*2.54,2);  %convert diameter in [in] to [cm] 4.09 small tube 5.734 big tube
phi=3.255e6;    %UV-C power in [uj]
lampDia=2.30;    %lamp diameter in [cm]
lampLength=28.5; %lamp length in [cm}

mask=mask(ductDiameter,lampDia);  %a logical mask of 0s and 1s 
pixles=sum(sum(mask));                      %number of pixles in annular cross section
area=pixles*(0.01^2);                       %annular area in [cm^2]

velocity=flow/area;
exposureTime=lampLength/velocity;

UVdose=UVirradianceR(ductDiameter,phi,lampLength,mask).*exposureTime;  %array of accumulated [uj/div^2] allong z
UVdose(isnan(UVdose))=0;
createfigure(UVdose);

populationFraction=exp(-z.*UVdose).*mask;
populationReduction=sum(sum(populationFraction))/(pixles);
percentPopulationReduction=(1-populationReduction)*100;
num2str(percentPopulationReduction,12)
createfigure(populationFraction);