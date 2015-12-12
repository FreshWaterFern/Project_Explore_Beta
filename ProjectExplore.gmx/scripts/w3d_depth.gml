/// w3d_depth(x,y,additional_depth)
/*
depth=w3d_depth(x,y,additional_depth)
This calculates a natural depth for the instance.
You can also choose to give it additional depth, when the instance is,
for example, high above the rest.

The last argument should NOT be the variable "depth", as that will create a loop.

Script made by TheSnidr
www.thesnidr.com
*/
gml_pragma("forceinline");
return (point_distance(view_xview[0]+view_wview[0]/2,view_yview[0]+view_hview[0]/2,argument0,argument1)/10)+argument2
