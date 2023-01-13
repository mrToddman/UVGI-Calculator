function [E]=UVirradianceR(r,lampLength,phi)

E=phi./(2.*pi().*r.*lampLength);