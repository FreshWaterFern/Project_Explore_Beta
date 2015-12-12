/// world_obj_delete(instance_id)

inst_id = argument0;
var index = ds_list_find_index(global.world_obj_ind,inst_id);

if ( index != -1 ) // if this object is already in our system
{
ds_list_delete(global.world_obj_data,index);
ds_list_delete(global.world_obj_ind,index);
}
