/// w3d_draw_cube_ext(top_tex,side_tex,x,y,z,height,xsize,ysize)
/*
Draws a cube at (x,y,z)
The texture index must be sized a power of two! 
That means 2, 4, 8, 16, 32, 64, 128, 256, 512 and so on

Script made by TheSnidr
www.thesnidr.com
*/
gml_pragma("forceinline");
/////////////////////////////////////////////////////////////////
//Initiate variables
var z1,z2,hor,ver,n,s,e,w,xx,yy,scl,
e1,w1,n1,s1,e2,w2,n2,s2,hmid,vmid;
/////////////////////////////////////////////////////////////////
//Find the actual z values and horizontal/vertical values of the top of the cube
z1=w3d_calculate_z(argument4)
z2=w3d_calculate_z(argument4+argument5)
hor=w3d_get_hor(argument2)
ver=w3d_get_ver(argument3)
argument6/=2 //Width
argument7/=2 //Height
/////////////////////////////////////////////////////////////////
//Find the coordinates for each corner of a flat square
e=argument2+argument6-argument2
w=argument2-argument6-argument2
n=argument3-argument7-argument3
s=argument3+argument7-argument3
/////////////////////////////////////////////////////////////////
//Find the coordinates for each corner of the bottom of the cube
xx=argument2-z1*hor
yy=argument3-z1*ver
scl=1+z1/500
e1=xx+e*scl
w1=xx+w*scl
n1=yy+n*scl
s1=yy+s*scl
/////////////////////////////////////////////////////////////////
//Find the coordinates for each corner of the top of the cube
xx=argument2-z2*hor
yy=argument3-z2*ver
scl=1+z2/500
e2=xx+e*scl
w2=xx+w*scl
n2=yy+n*scl
s2=yy+s*scl
/////////////////////////////////////////////////////////////////
//These variables are used when making the extra triangle
hmid=(e2+w2)/2
vmid=(n2+s2)/2
/////////////////////////////////////////////////////////////////
//Draw the cube
//North wall
if n1<n2{
    draw_primitive_begin_texture(pr_trianglestrip,argument1)
        draw_vertex_texture(w2,n2,0,0)
        draw_vertex_texture(w1,n1,0,1)
        draw_vertex_texture(hmid,n2,0.5,0)
        draw_vertex_texture(e1,n1,1,1)
        draw_vertex_texture(e2,n2,1,0)
    draw_primitive_end()}
/////////////////////////////////////////////////////////////////
//South wall
if s1>s2{
    draw_primitive_begin_texture(pr_trianglestrip,argument1)
        draw_vertex_texture(w2,s2,0,0)
        draw_vertex_texture(w1,s1,0,1)
        draw_vertex_texture(hmid,s2,0.5,0)
        draw_vertex_texture(e1,s1,1,1)
        draw_vertex_texture(e2,s2,1,0)
    draw_primitive_end()}
/////////////////////////////////////////////////////////////////
//West wall
if w1<w2{
    draw_primitive_begin_texture(pr_trianglestrip,argument1)
        draw_vertex_texture(w2,s2,0,0)
        draw_vertex_texture(w1,s1,0,1)
        draw_vertex_texture(w2,vmid,0.5,0)
        draw_vertex_texture(w1,n1,1,1)
        draw_vertex_texture(w2,n2,1,0)
    draw_primitive_end()}
/////////////////////////////////////////////////////////////////
//East wall
if e1>e2{
    draw_primitive_begin_texture(pr_trianglestrip,argument1)
        draw_vertex_texture(e2,s2,0,0)
        draw_vertex_texture(e1,s1,0,1)
        draw_vertex_texture(e2,vmid,0.5,0)
        draw_vertex_texture(e1,n1,1,1)
        draw_vertex_texture(e2,n2,1,0)
    draw_primitive_end()}
/////////////////////////////////////////////////////////////////
//Draw top
draw_primitive_begin_texture(pr_trianglestrip,argument0)  
    draw_vertex_texture(e2,n2,0,0)
    draw_vertex_texture(e2,s2,0,1)
    draw_vertex_texture(w2,n2,1,0)
    draw_vertex_texture(w2,s2,1,1)
draw_primitive_end()
