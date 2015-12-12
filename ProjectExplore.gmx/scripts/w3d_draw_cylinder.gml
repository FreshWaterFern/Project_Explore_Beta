/// w3d_draw_cylinder(texture_index,x,y,z,height,radius)
/*
/// w3d_draw_cylinder(texture_index,x,y,z,height,radius)
This script does not have an internal depth system,
meaning the walls will draw over each other wrongly.
If the internal depth is important for your use, 
use the w3d model scripts instead

Script made by TheSnidr
www.thesnidr.com
*/
var i,z1,z2,xx,yy,hor,ver,xtex;
z1=w3d_calculate_z(argument3)
z2=w3d_calculate_z(argument3+argument4)
draw_primitive_begin_texture(pr_trianglestrip,argument0)
for (i=-360/10;i<360;i+=360/10)
{
    xx=argument1+lengthdir_x(argument5,i)
    yy=argument2+lengthdir_y(argument5,i)
    hor=w3d_get_hor(xx)
    ver=w3d_get_ver(yy)
    xtex=i/360
    draw_vertex_texture(xx-z1*hor,yy-z1*ver,xtex,1)
    draw_vertex_texture(xx-z2*hor,yy-z2*ver,xtex,0)
}
draw_primitive_end()
