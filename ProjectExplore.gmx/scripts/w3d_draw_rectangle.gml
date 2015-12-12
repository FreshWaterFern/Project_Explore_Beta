/*
w3d_draw_rectangle(x1,y1,x2,y2,z,outline)
Draws a rectangle from (x1,y1,z) to (x2,y2,z)

Script made by TheSnidr
www.thesnidr.com
*/

var scale,_hor,_ver;
temp_z=w3d_calculate_z(argument4)
scale= (temp_z/500)
_hor=w3d_get_hor(argument0)
_ver=w3d_get_ver(argument1)

draw_rectangle(argument0-((argument2-argument0)/2)*scale-(temp_z*_hor),argument1-((argument3-argument1)/2)*scale-(temp_z*_ver),argument2+((argument2-argument0)/2)*scale-(temp_z*_hor),argument3+((argument2-argument0)/2)*scale-(temp_z*_ver),argument5)