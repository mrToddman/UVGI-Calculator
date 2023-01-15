# UVGI In Duct UV-C Calculator

<img src="assets/image.jpg?raw=true" width="500px"><br/>

This calculator Requires Matlab with symbolic toolbox plug-in to run. It is missing a GUI and the code is a little rough. The m scripts calculate UV dose, and reduction of biological effluents flowing in water or air inline axially to a UVGI lamp array. Both a square duct or round tube can be modeled. The lamp array is customizable in n rows by m columns and is automatically evenly placed.

“UVGIrectangularDuct.m” is the calculator for a lamp array in a rectangular duct.
“concentricUVGItube.m” is the calculator for a lamp concentric in a duct. The “UVirradianceR.m” function is different here than “UVirradianceR.m” in the rectangularDuct folder. It also compensates UV dose for PTFE reflector.

"UGVIandPurge.xlsx" is a tool for calculating mixed population reduction methods, ie, UVGI, room purge, and filters. Not CFD, assumes infinitely mixed. It would be useful to add this to the GUI.

Useful ASHRAE article on UVGI: https://www.ashrae.org/file%20library/technical%20resources/covid-19/i-p_s16_ch17.pdf

Well condensed primer on UV-C lamps: https://lightsources.wpenginepowered.com/wp-content/uploads/2015/05/Germicidal_Lamp_Basics_-_2013.pdf
