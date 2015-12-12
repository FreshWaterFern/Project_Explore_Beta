/*
w3d_draw_wall(texture_index,x1,y1,x2,y2,height)
Draws a w3d wall from (x1,y1) to (x2,y2)
Requires a texture index
The texture must have a size the power of 2.
That means, 4, 8, 16, 32, 64, 128, 512, 1024 - and so on..

Script made by TheSnidr
www.thesnidr.com
*/

var hor1,ver1,hor2,ver2,scale,z2;

z2=w3d_calculate_z(argument5)

hor1=w3d_get_hor(argument1)
hor2=w3d_get_hor(argument3)
ver1=w3d_get_ver(argument2)
ver2=w3d_get_ver(argument4)

draw_primitive_begin_texture(pr_trianglestrip,argument0)
    draw_vertex_texture(argument1,argument2,0,1)
    draw_vertex_texture(argument1-(z2*hor1),argument2-(z2*ver1),0,0)
    draw_vertex_texture((argument1+argument3)/2,(argument2+argument4)/2,1/2,1)
    draw_vertex_texture(argument3-(z2*hor2),argument4-(z2*ver2),1,0)
    draw_vertex_texture(argument3,argument4,1,1)
draw_primitive_end()
