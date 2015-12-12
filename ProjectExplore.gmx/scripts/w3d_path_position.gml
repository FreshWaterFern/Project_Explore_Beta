/*
scr_path_position(ind,n)
Finds the position of point n in the path.
This script is made specifically for use with w3d_create_model, and
may not work as expected for other causes.

Script made by TheSnidr
www.thesnidr.com
*/
var nr,dist,i;
nr=path_get_number(argument0)
dist=0
for (i=1;i<min(argument1+1,nr);i+=1)
{
    dist+=point_distance(path_get_point_x(argument0,i),path_get_point_y(argument0,i),path_get_point_x(argument0,i-1),path_get_point_y(argument0,i-1))
}
return dist/path_get_length(argument0)
