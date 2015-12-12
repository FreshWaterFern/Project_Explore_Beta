/// world_obj_update(instance_id)

inst_id = argument0;
var index = ds_list_find_index(global.world_obj_ind,inst_id);

if ( index != -1 ) // if this object is already added to our system
{
var list = world_object_list_create(object_get_name(inst_id.object_index),inst_id); // our temporary list to place all of our object data
ds_list_replace(global.world_obj_data,index,convert_list_to_string(list,","));
ds_list_destroy(list);
}
