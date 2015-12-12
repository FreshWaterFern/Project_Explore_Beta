/// world_obj_add(instance_id)

var inst_id = argument0;

if ( ds_list_find_index(global.world_obj_ind,inst_id) == -1 ) // if this object is not already added to our system
{
ds_list_add(global.world_obj_ind,inst_id); // add our instance_id to our index list

var list = world_object_list_create(object_get_name(inst_id.object_index),inst_id); // our temporary list to place all of our object data
ds_list_add(global.world_obj_data,convert_list_to_string(list,","));
ds_list_destroy(list);
}
