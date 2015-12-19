/// world_generate_from_file(file_id)

if ( argument0 != -1 ){

var temp_list = 0;var str_read = "";

while(!file_text_eof(argument0))
{
    str_read = file_text_read_string(argument0);
    if ( str_read != "" && str_read != " " ){
    temp_list = convert_string_to_list(str_read,",");
    file_text_readln(argument0);
    obj_name = object_get_name(objind(asset_get_index(temp_list[|0])));
    switch(obj_name)
    {
        case "obj_npc_wolf":{
        inst = instance_create(real(temp_list[|1]),real(temp_list[|2]),objind(asset_get_index(temp_list[|0])));
        inst.ai_dead = real(temp_list[|4]);
        inst.ai_attack = real(temp_list[|5]);
        inst.ai_reproduce_cd = real(temp_list[|6]);
        inst.death_frames = real(temp_list[|7]);
        inst.npc_food = real(temp_list[|8]);
        inst.npc_thirst = real(temp_list[|9]);
        inst.npc_health = real(temp_list[|10]);
        inst.npc_anger = real(temp_list[|11]);
        inst.npc_fear = real(temp_list[|12]);
        inst.npc_heat = real(temp_list[|13]);
        inst.npc_state = real(temp_list[|14]);
        break;}
    
        case "obj_world_tree_1":{
        inst = instance_create(real(temp_list[|1]),real(temp_list[|2]),objind(asset_get_index(temp_list[|0])));
        inst.resource_id = real(temp_list[|4]);
        inst.resource_count = real(temp_list[|5]);
        inst.resource_max = real(temp_list[|6]);
        inst.tree_top_sub = real(temp_list[|7]);
        inst.tree_top_rot = real(temp_list[|8]);
        break;}
        
        case "obj_world_rock_1":{
        inst = instance_create(real(temp_list[|1]),real(temp_list[|2]),objind(asset_get_index(temp_list[|0])));
        inst.resource_id = real(temp_list[|4]);
        inst.resource_count = real(temp_list[|5]);
        inst.scale_x = real(temp_list[|6]);
        inst.scale_y = real(temp_list[|7]);
        inst.direction = real(temp_list[|8]);
        break;}
        
        case "obj_world_rock_2":{
        inst = instance_create(real(temp_list[|1]),real(temp_list[|2]),objind(asset_get_index(temp_list[|0])));
        inst.resource_id = real(temp_list[|4]);
        inst.resource_count = real(temp_list[|5]);
        inst.scale_x = real(temp_list[|6]);
        inst.scale_y = real(temp_list[|7]);
        inst.direction = real(temp_list[|8]);
        break;}
        
        case "obj_world_water1":{
        inst = instance_create(real(temp_list[|1]),real(temp_list[|2]),objind(asset_get_index(temp_list[|0])));
        break;}
        
        case "obj_world_water2":{
        inst = instance_create(real(temp_list[|1]),real(temp_list[|2]),objind(asset_get_index(temp_list[|0])));
        break;}
        
        case "obj_env_plant1":{
        inst = instance_create(real(temp_list[|1]),real(temp_list[|2]),objind(asset_get_index(temp_list[|0])));
        inst.image_angle = real(temp_list[|4]);
        inst.leaf_status = real(temp_list[|5]);
        inst.leaf_growth= real(temp_list[|6]);
        inst.max_leaves = real(temp_list[|7]);
        break;}
        
        case "obj_env_plant2":{
        inst = instance_create(real(temp_list[|1]),real(temp_list[|2]),objind(asset_get_index(temp_list[|0])));
        inst.image_angle = real(temp_list[|4]);
        inst.leaf_status = real(temp_list[|5]);
        inst.leaf_growth= real(temp_list[|6]);
        inst.max_leaves = real(temp_list[|7]);
        break;}
        
        case "obj_env_plant3":{
        inst = instance_create(real(temp_list[|1]),real(temp_list[|2]),objind(asset_get_index(temp_list[|0])));
        inst.image_angle = real(temp_list[|4]);
        inst.leaf_status = real(temp_list[|5]);
        inst.leaf_growth= real(temp_list[|6]);
        inst.max_leaves = real(temp_list[|7]);
        break;}
        
        case "obj_env_bush1":{
        inst = instance_create(real(temp_list[|1]),real(temp_list[|2]),objind(asset_get_index(temp_list[|0])));
        inst.image_angle = real(temp_list[|4]);
        inst.leaf_status = real(temp_list[|5]);
        inst.leaf_growth= real(temp_list[|6]);
        inst.max_leaves = real(temp_list[|7]);
        break;}
        
        case "obj_wolf_grave":{
        inst = instance_create(real(temp_list[|1]),real(temp_list[|2]),objind(asset_get_index(temp_list[|0])));
        inst.fade_time = real(temp_list[|4]);
        break;}
        
        case "obj_item_dropped":{
        inst = instance_create(real(temp_list[|1]),real(temp_list[|2]),objind(asset_get_index(temp_list[|0])));
        inst.item_id = real(temp_list[|4]);
        inst.item_stack = real(temp_list[|5]);
        break;}
        
        case "obj_archetype_basic":{
        inst = world_create_instance(real(temp_list[|1]),real(temp_list[|2]),objind(asset_get_index(temp_list[|0])),temp_list[|ds_list_size(temp_list)-1],real(temp_list[|3]))
        world_obj_add_queue(inst.id);
        break;}
        
        case "obj_archetype_storage":{
        inst = world_create_instance(real(temp_list[|1]),real(temp_list[|2]),objind(asset_get_index(temp_list[|0])),temp_list[|ds_list_size(temp_list)-1],real(temp_list[|3]))
        inst.index = real(temp_list[|3]);
        width = real(temp_list[|4]);height = real(temp_list[|5]);
        list_cache = ds_list_create();
        for(i=6;i<(6+(width*height));i++){
        ds_list_add(list_cache,real(temp_list[|i]));}
        inst.c_inv = convert_list_to_grid_real(list_cache,width,height);
        ds_list_destroy(list_cache);
        list_cache = ds_list_create();
        for(r=i;r<(i+(width*height));r++){
        ds_list_add(list_cache,real(temp_list[|r]));}
        inst.c_stack = convert_list_to_grid_real(list_cache,width,height);
        ds_list_destroy(list_cache);
        world_obj_add_queue(inst.id);
        break;}
        
        case "obj_archetype_cooking":{
        inst = world_create_instance(real(temp_list[|1]),real(temp_list[|2]),objind(asset_get_index(temp_list[|0])),temp_list[|ds_list_size(temp_list)-1],real(temp_list[|3]))
        inst.index = real(temp_list[|3]);
        width = real(temp_list[|4]);height = real(temp_list[|5]);
        list_cache = ds_list_create();
        for(i=6;i<(6+(width*height));i++){
        ds_list_add(list_cache,real(temp_list[|i]));}
        inst.c_inv = convert_list_to_grid_real(list_cache,width,height);
        ds_list_destroy(list_cache);
        list_cache = ds_list_create();
        for(r=i;r<(i+(width*height));r++){
        ds_list_add(list_cache,real(temp_list[|r]));}
        inst.c_stack = convert_list_to_grid_real(list_cache,width,height);
        ds_list_destroy(list_cache);
        list_cache = ds_list_create();
        for(i=r;i<(r+(width*height));i++){
        ds_list_add(list_cache,real(temp_list[|i]));}
        inst.cooking_grid = convert_list_to_grid_real(list_cache,width,height);
        ds_list_destroy(list_cache);
        inst.is_enabled = real(temp_list[|ds_list_size(temp_list)-3]);
        inst.fuel_count = real(temp_list[|ds_list_size(temp_list)-2]);
        world_obj_add_queue(inst.id);
        break;}
    }
ds_list_destroy(temp_list);
}
}
file_text_close(argument0);
}
else
{
show_debug_message("Missing chunk file!");
}
