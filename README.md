# UVGI In Duct UV-C Calculator

<img src="assets/image.jpg?raw=true" width="500px"><br/>

This calculator Requires Matlab with symbolic toolbox plug-in to run. It is missing a GUI and the code is a little rough. The m scripts calculate UV dose, and reduction of target biologically active effluents flowing in water or air inline to a UVGI lamp array. Both a square duct or round tube can be modeled. The lamp array is customizable and automatically spaced n rows by m columns.

“UVGIrectangularDuct.m” is the calculator for a lamp array in a rectangular duct.

“concentricUVGItube.m” is the calculator for a lamp concentric in a duct. The “UVirradianceR.m” function is different here than “UVirradianceR.m” in the rectangularDuct folder. It also compensates UV dose for PTFE reflector.

"mixedModeIAQ.xlsx" is a tool for calculating population reduction using simultaneous IAQ methods, ie, UVGI, room purge, and filters. Not CFD, but provides an alternative use for the ASHRAE 62.2 ventillation effectiveness factor Ev. This should probably be pushed to a higher level m script.

“UVGI Z Values.xlsx” is a meta file containing all the Z values I could find mid-2020. Several UVC product sales reps didn’t have the recommended UV dose for “The Rona”. Researchers published the Z values in different units, at different log reductions, and even reciprocal. This meta file is a spread to view all the Z values at once and correlate them in the same units of measure. Concerning discrepancies appear until the test apparatus are investigated in Walker and Bianco’s publications. Either Walker and others are not accounting for double exposure from UVC reflections in their test apparatus or Bianco’s Z values are more UVC resilient because of some optical impedance mismatch between viral envelope and water. Either way, the more conservative Z value published in Bianco’s research seem to be safer to use.

Useful ASHRAE article on UVGI: https://www.ashrae.org/file%20library/technical%20resources/covid-19/i-p_s16_ch17.pdf

Well condensed primer on UV-C lamps: https://lightsources.wpenginepowered.com/wp-content/uploads/2015/05/Germicidal_Lamp_Basics_-_2013.pdf
