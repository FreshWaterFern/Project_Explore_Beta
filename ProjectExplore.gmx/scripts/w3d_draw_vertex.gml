/*
w3d_draw_vertex(x,y,z)
Adds a vertex to a primitive, from (x1,y1,z1) to (x2,y2,z2).

Script made by TheSnidr
www.thesnidr.com
*/

var z;
z=w3d_calculate_z(argument2)
draw_vertex(argument0-z*w3d_get_hor(argument0),argument1-z*w3d_get_ver(argument1))
