/// object_mod_inherit(index)
var list = ds_list_create();

// Reads all of the mod data from our grid to a list which is returned
// to the instance that has called it.

ds_list_add(list,global.object_data[#argument0,0]); // Name
ds_list_add(list,global.object_data[#argument0,1]); // Texture
ds_list_add(list,global.object_data[#argument0,2]); // Hitbox
ds_list_add(list,global.object_data[#argument0,3]); // Type
ds_list_add(list,global.object_data[#argument0,4]); // Stat1
ds_list_add(list,global.object_data[#argument0,5]); // Stat2
ds_list_add(list,global.object_data[#argument0,6]); // Rot
ds_list_add(list,global.object_data[#argument0,7]);
if ( global.object_data[#argument0,7] != 0 ) // 3D
{
ds_list_add(list,global.object_data[#argument0,8]); // x
ds_list_add(list,global.object_data[#argument0,9]); // y
ds_list_add(list,global.object_data[#argument0,10]); // z1
ds_list_add(list,global.object_data[#argument0,11]); // z2
ds_list_add(list,global.object_data[#argument0,12]); // xsize
ds_list_add(list,global.object_data[#argument0,13]); // Ysize
}

return list;
ds_list_destroy(list);
