function [E]=UVirradiance(a,phi,lampLength)

E=phi./(2.*pi().*a.*lampLength);