/// chunk_reload_section(x_modifier,y_modifier);
var chunk_string = string(global.chunk_x+argument0)+":"+string(global.chunk_y+argument1);
var i = 0;
for(i=ds_list_find_index(global.w_obj_chunk,chunk_string);i<ds_list_size(global.w_obj_chunk);i++){
    if ( global.w_obj_chunk[| i] == chunk_string )
    {
    if ( instance_exists(global.w_obj_id[| i]) == false )
    {instance_reload(i);}
    }
}
