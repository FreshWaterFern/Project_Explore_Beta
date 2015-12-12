/// w3d_draw_sprite_ext(sprite_index,image_index,x,y,z,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
/*
Draws a sprite at (x,y,z).

Script made by TheSnidr
www.thesnidr.com
*/
gml_pragma("forceinline");
var scale,temp_z;
temp_z=w3d_calculate_z(argument4)
scale= (temp_z/500)
_hor=w3d_get_hor(argument2)
_ver=w3d_get_ver(argument3)

draw_sprite_ext(argument0,argument1,argument2-(temp_z*_hor),argument3-(temp_z*_ver),argument5+scale*argument5,argument6+scale*argument6,argument7,argument8,argument9)
