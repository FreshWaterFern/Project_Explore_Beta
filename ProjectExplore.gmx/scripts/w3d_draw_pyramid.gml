/*
w3d_draw_pyramid(texture_index,x,y,z,height,xsize,ysize)
Draws a pyramid ("spike") using primitives. 

Script made by TheSnidr
www.thesnidr.com
*/


var z1,z2,midx,midy,n,s,e,w;

z1=w3d_calculate_z(argument3)
z2=w3d_calculate_z(argument3+argument4)
midx=argument1-z2*w3d_get_hor(argument1)
midy=argument2-z2*w3d_get_ver(argument2)

n=argument2-argument6/2
n-=z1*w3d_get_ver(n)
s=argument2+argument6/2
s-=z1*w3d_get_ver(s)
e=argument1+argument5/2
e-=z1*w3d_get_hor(e)
w=argument1-argument5/2
w-=z1*w3d_get_hor(w)

draw_primitive_begin_texture(pr_trianglelist,argument0)
//North
if midy>n{
    draw_vertex_texture(e,n,1,0)
    draw_vertex_texture(midx,midy,0.5,0.5)
    draw_vertex_texture(w,n,0,0)}
//South
if midy<s{
    draw_vertex_texture(e,s,1,1)
    draw_vertex_texture(midx,midy,0.5,0.5)
    draw_vertex_texture(w,s,0,1)}
//East
if midx<e{
    draw_vertex_texture(e,s,1,1)
    draw_vertex_texture(midx,midy,0.5,0.5)
    draw_vertex_texture(e,n,1,0)}
//West
if midx>w{
    draw_vertex_texture(w,s,0,1)
    draw_vertex_texture(midx,midy,0.5,0.5)
    draw_vertex_texture(w,n,0,0)}
draw_primitive_end()
