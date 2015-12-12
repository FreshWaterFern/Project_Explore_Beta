/// w3d_draw_cube_tex(top_tex,n_tex,s_tex,e_tex,w_text,x,y,z,height,xsize,ysize)
/*
Draws a cube at (x,y,z)
The texture indexes must be sized a power of two! 
That means 2, 4, 8, 16, 32, 64, 128, 256, 512 and so on
n_tex=north texture
s_tex=south texture
e_tex=east texture
w_tex=west texture

Script made by TheSnidr
www.thesnidr.com
*/
/////////////////////////////////////////////////////////////////
//Initiate variables
var z1,z2,hor,ver,n,s,e,w,xx,yy,scl,
e1,w1,n1,s1,e2,w2,n2,s2,hmid,vmid;
/////////////////////////////////////////////////////////////////
//Find the actual z values and horizontal/vertical values of the top of the cube
z1=w3d_calculate_z(argument7)
z2=w3d_calculate_z(argument7+argument8)
hor=w3d_get_hor(argument5)
ver=w3d_get_ver(argument6)
argument9/=2 //Width
argument10/=2 //Height
/////////////////////////////////////////////////////////////////
//Find the coordinates for each corner of a flat square
e=argument5+argument9-argument5
w=argument5-argument9-argument5
n=argument6-argument10-argument6
s=argument6+argument10-argument6
/////////////////////////////////////////////////////////////////
//Find the coordinates for each corner of the bottom of the cube
xx=argument5-z1*hor
yy=argument6-z1*ver
scl=1+z1/500
e1=xx+e*scl
w1=xx+w*scl
n1=yy+n*scl
s1=yy+s*scl
/////////////////////////////////////////////////////////////////
//Find the coordinates for each corner of the top of the cube
xx=argument5-z2*hor
yy=argument6-z2*ver
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
    draw_primitive_begin_texture(pr_trianglestrip,argument2)
        draw_vertex_texture(w2,s2,0,0)
        draw_vertex_texture(w1,s1,0,1)
        draw_vertex_texture(hmid,s2,0.5,0)
        draw_vertex_texture(e1,s1,1,1)
        draw_vertex_texture(e2,s2,1,0)
    draw_primitive_end()}
/////////////////////////////////////////////////////////////////
//East wall
if e1>e2{
    draw_primitive_begin_texture(pr_trianglestrip,argument3)
        draw_vertex_texture(e2,s2,0,0)
        draw_vertex_texture(e1,s1,0,1)
        draw_vertex_texture(e2,vmid,0.5,0)
        draw_vertex_texture(e1,n1,1,1)
        draw_vertex_texture(e2,n2,1,0)
    draw_primitive_end()}
/////////////////////////////////////////////////////////////////
//West wall
if w1<w2{
    draw_primitive_begin_texture(pr_trianglestrip,argument4)
        draw_vertex_texture(w2,s2,0,0)
        draw_vertex_texture(w1,s1,0,1)
        draw_vertex_texture(w2,vmid,0.5,0)
        draw_vertex_texture(w1,n1,1,1)
        draw_vertex_texture(w2,n2,1,0)
    draw_primitive_end()}
/////////////////////////////////////////////////////////////////
//Draw top
draw_primitive_begin_texture(pr_trianglestrip,argument0)  
    draw_vertex_texture(e2,n2,0,0)
    draw_vertex_texture(e2,s2,0,1)
    draw_vertex_texture(w2,n2,1,0)
    draw_vertex_texture(w2,s2,1,1)
draw_primitive_end()
