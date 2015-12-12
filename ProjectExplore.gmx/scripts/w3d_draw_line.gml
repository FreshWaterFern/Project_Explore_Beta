/*
w3d_draw_line(x1,y1,z1,x2,y2,z2)
Draws a line from (x1,y1,z1) to (x2,y2,z2)

Script made by TheSnidr
www.thesnidr.com
*/
var z1,z2;
z1=w3d_calculate_z(argument2)
z2=w3d_calculate_z(argument5)
draw_line(
argument0-(z1*w3d_get_hor(argument0)), //x1
argument1-(z1*w3d_get_ver(argument1)), //y1
argument3-(z2*w3d_get_hor(argument3)), //x2
argument4-(z2*w3d_get_ver(argument4))) //y2
