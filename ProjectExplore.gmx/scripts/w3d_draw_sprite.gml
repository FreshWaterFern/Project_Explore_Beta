///w3d_draw_sprite(sprite_index,image_index,x,y,z)
/*
Draws a sprite at (x,y,z).

Script made by TheSnidr
www.thesnidr.com
*/
gml_pragma("forceinline");
var scale,temp_z,xx,yy;
temp_z=w3d_calculate_z(argument4)
scale=1+temp_z/500
xx=argument2-temp_z*w3d_get_hor(argument2)
yy=argument3-temp_z*w3d_get_ver(argument3)

draw_sprite_ext(argument0,argument1,xx,yy,scale,scale,0,c_white,1)
