/// w3d_draw_cube(texture,x,y,height,xsize,ysize)
/*
Draws a cube at (x,y,z)
The texture index must be sized a power of two! 
That means 2, 4, 8, 16, 32, 64, 128, 256, 512 and so on
This cube is always drawn with its base at (x,y,0), and top at (x,y,height).
If you want it to be drawn from (x,y,z1) to (x,y,z2), use draw_cube_ext

Script made by TheSnidr
www.thesnidr.com
*/
/////////////////////////////////////////////////////////////////
//Initiate variables
var z2,hor,ver,n1,s1,e1,w1,
xx,yy,scl,e2,w2,n2,s2,hmid,vmid;
/////////////////////////////////////////////////////////////////
//Find the actual z value and horizontal/vertical value of the top of the cube
z2=w3d_calculate_z(argument3)
hor=w3d_get_hor(argument1)
ver=w3d_get_ver(argument2)
argument4/=2 //Width
argument5/=2 //Height
/////////////////////////////////////////////////////////////////
//Find the coordinates for each corner of the bottom of the cube
e1=argument1+argument4
w1=argument1-argument4
n1=argument2-argument5
s1=argument2+argument5
/////////////////////////////////////////////////////////////////
//Find the coordinates for each corner of the top of the cube
xx=argument1-z2*hor
yy=argument2-z2*ver
scl=1+z2/500
e2=xx+(e1-argument1)*scl
w2=xx+(w1-argument1)*scl
n2=yy+(n1-argument2)*scl
s2=yy+(s1-argument2)*scl
/////////////////////////////////////////////////////////////////
//These variables are used when making the extra triangle
hmid=(e2+w2)/2
vmid=(n2+s2)/2
/////////////////////////////////////////////////////////////////
//Draw the cube
//North wall
if n1<n2{
    draw_primitive_begin_texture(pr_trianglestrip,argument0)
        draw_vertex_texture(w2,n2,0,0)
        draw_vertex_texture(w1,n1,0,1)
        draw_vertex_texture(hmid,n2,0.5,0)
        draw_vertex_texture(e1,n1,1,1)
        draw_vertex_texture(e2,n2,1,0)
    draw_primitive_end()}
/////////////////////////////////////////////////////////////////
//South wall
if s1>s2{
    draw_primitive_begin_texture(pr_trianglestrip,argument0)
        draw_vertex_texture(w2,s2,0,0)
        draw_vertex_texture(w1,s1,0,1)
        draw_vertex_texture(hmid,s2,0.5,0)
        draw_vertex_texture(e1,s1,1,1)
        draw_vertex_texture(e2,s2,1,0)
    draw_primitive_end()}
/////////////////////////////////////////////////////////////////
//West wall
if w1<w2{
    draw_primitive_begin_texture(pr_trianglestrip,argument0)
        draw_vertex_texture(w2,s2,0,0)
        draw_vertex_texture(w1,s1,0,1)
        draw_vertex_texture(w2,vmid,0.5,0)
        draw_vertex_texture(w1,n1,1,1)
        draw_vertex_texture(w2,n2,1,0)
    draw_primitive_end()}
/////////////////////////////////////////////////////////////////
//East wall
if e1>e2{
    draw_primitive_begin_texture(pr_trianglestrip,argument0)
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
