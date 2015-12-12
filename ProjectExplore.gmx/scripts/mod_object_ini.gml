/// mod_object_ini()
gml_pragma("forceinline");
var str1 = "";var str2 = "";var str3 = "";var index = ds_grid_width(global.object_data);

if(!file_text_eof(file))
{
ds_grid_resize(global.object_data,ds_grid_width(global.object_data)+1,14);
// -- Get Item Name -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"name: ","");
global.object_data[#index,0]=string(str1);
ds_map_add(global.object_map,string_lower(str1),index);
// -- Get Texture -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = WD+string_replace(str1,"texture: ","");
global.object_data[#index,1]=background_add(str1,false,false);
// -- Get Hitbox -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = WD+string_replace(str1,"hitbox: ","");
global.object_data[#index,2]=sprite_add(str1,0,false,false,0,0);
sprite_set_offset(global.object_data[#index,2],sprite_get_width(global.object_data[#index,2])/2,sprite_get_height(global.object_data[#index,2])/2);
// -- Get Type -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"type: ","");
global.object_data[#index,3]=real(str1);
// -- Get Stat1 -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"stat1: ","");
global.object_data[#index,4]=string(str1);
// -- Get Stat2-- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"stat2: ","");
global.object_data[#index,5]=string(str1);
// -- Get Rotation (0 or 1) -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"rot: ","");
global.object_data[#index,6]=real(str1);
// -- Get 3D (0 or 1) -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"3d: ","");
global.object_data[#index,7]=real(str1);
// -- Get X coordinates -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"x: ","");
global.object_data[#index,8]=string(str1);
// -- Get Y coordinates -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"y: ","");
global.object_data[#index,9]=string(str1);
// -- Get Z1 coordinates -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"z1: ","");
global.object_data[#index,10]=string(str1);
// -- Get Z2 coordinates -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"z2: ","");
global.object_data[#index,11]=string(str1);
// -- Get X Sizes -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"xsize: ","");
global.object_data[#index,12]=string(str1);
// -- Get Y Sizes -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"ysize: ","");
global.object_data[#index,13]=string(str1);

/*Skip Ahead Into The Next Item*/
file_step++;
}
else
{item_load = true;file_step--;load_step=2;}
