/*
w3d_calculate_z(z)
To make a better feel of 3d, this function should be used.
It is already implemented in the functions that needs it though.

Script made by TheSnidr
www.thesnidr.com
*/
gml_pragma("forceinline");
if argument0<=0{return (-10*argument0)/(0.02*argument0-10) exit;}
return power(0.8*argument0,(0.0008*argument0+1))
