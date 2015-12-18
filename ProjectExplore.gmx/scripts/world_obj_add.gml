/// world_obj_add(instance_id)

var inst_id = argument0;
var prefix = "worlds\"+global.world_folder+"\chunks\";
var chunk_get = world_get_chunk(inst_id.x,inst_id.y);
if ( file_exists(prefix+"chunk"+string(chunk_get[0])+"_"+string(chunk_get[1])+".txt") ){
var file_str = ds_list_create();

if ( ds_list_find_index(global.world_obj_ind,inst_id) == -1 ) // if this object is not already added to our system
{
ds_list_add(global.world_obj_ind,inst_id); // add our instance_id to our index list

var list = world_object_list_create(object_get_name(inst_id.object_index),inst_id); // our temporary list to place all of our object data
var str = convert_list_to_string(list,",");
ds_list_add(global.world_obj_data,str);
ds_list_destroy(list);

var skip_write = false;
file = file_text_open_read(prefix+"chunk"+string(chunk_get[0])+"_"+string(chunk_get[1])+".txt");
while(!file_text_eof(file)){
ds_list_add(file_str,file_text_read_string(file));
file_text_readln(file);
}
file_text_close(file);

if ( ds_list_find_index(file_str,str) == -1 ){
var file = file_text_open_append(prefix+"chunk"+string(chunk_get[0])+"_"+string(chunk_get[1])+".txt");
file_text_write_string(file,global.world_obj_data[|ds_list_size(global.world_obj_data)-1]);file_text_writeln(file);
file_text_close(file);
}

}

ds_list_destroy(file_str);
}
else
{
if ( ds_list_find_index(global.world_obj_ind,inst_id) == -1 ) // if this object is not already added to our system
{
ds_list_add(global.world_obj_ind,inst_id); // add our instance_id to our index list
}
var list = world_object_list_create(object_get_name(inst_id.object_index),inst_id); // our temporary list to place all of our object data
var str = convert_list_to_string(list,",");
ds_list_add(global.world_obj_data,str);
var file = file_text_open_write(prefix+"chunk"+string(chunk_get[0])+"_"+string(chunk_get[1])+".txt");
file_text_write_string(file,str);file_text_writeln(file);
file_text_close(file);
}
