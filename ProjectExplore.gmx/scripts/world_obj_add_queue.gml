/// world_obj_add_queue(instance_id)

var inst_id = argument0;
var prefix = "worlds\"+global.world_folder+"\chunks\";
var chunk_get = world_get_chunk(inst_id.x,inst_id.y);
var file_name = prefix+"chunk"+string(chunk_get[0])+"_"+string(chunk_get[1])+".txt";

if ( ds_list_find_index(global.world_obj_ind,inst_id) == -1 ) // if this object is not already added to our system
{
ds_list_add(global.world_obj_ind,inst_id); // add our instance_id to our index list

var list = world_object_list_create(object_get_name(inst_id.object_index),inst_id); // our temporary list to place all of our object data
var str = convert_list_to_string(list,",");
ds_list_add(global.world_obj_data,str);
ds_list_destroy(list);

var index = ds_list_find_index(file_list_queue,file_name);

if ( index == -1 )
{
ds_list_add(file_list_queue,file_name);
index = ds_list_find_index(file_list_queue,file_name);
}

ds_queue_enqueue(queue_file_list,index);
ds_queue_enqueue(queue_chunk_write_step,str);
}
