/*
w3d_draw_vertex_texture(x,y,z,xtex,ytex,color,alpha)
Adds a vertex to the primitive, from (x1,y1,z1) to (x2,y2,z2).

Script made by TheSnidr
www.thesnidr.com
*/

var z;
z=w3d_calculate_z(argument2)
draw_vertex_texture_color(argument0-z*w3d_get_hor(argument0),argument1-z*w3d_get_ver(argument1),argument3,argument4,argument5,argument6)
