/*
w3d_draw_point(x,y,z)
Draws a point at (x,y,z)

Script made by TheSnidr
www.thesnidr.com
*/
var z;
z=w3d_calculate_z(argument2)
draw_point(
argument0-(z*w3d_get_hor(argument0)), //x
argument1-(z*w3d_get_ver(argument1))) //y
