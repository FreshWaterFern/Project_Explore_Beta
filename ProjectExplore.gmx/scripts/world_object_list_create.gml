/// world_object_list_create(object_name,instance_id)
/*
   Generate a DS list based on the type of object
   we are handling.
*/

var inst_id = argument1;
var list = ds_list_create();
var list_cache = 0;
var str = "";

// Generic variables required for all objects
ds_list_add(list,string(argument0));
ds_list_add(list,inst_id.x);
ds_list_add(list,inst_id.y);
ds_list_add(list,inst_id.index);

switch(argument0)
{
case "obj_npc_wolf":{
    ds_list_add(list,inst_id.ai_dead);
    ds_list_add(list,inst_id.ai_attack_cd);
    ds_list_add(list,inst_id.ai_reproduce_cd);
    ds_list_add(list,inst_id.death_frames);
    ds_list_add(list,inst_id.npc_food);
    ds_list_add(list,inst_id.npc_thirst);
    ds_list_add(list,inst_id.npc_health);
    ds_list_add(list,inst_id.npc_anger);
    ds_list_add(list,inst_id.npc_fear);
    ds_list_add(list,inst_id.npc_heat);
    ds_list_add(list,inst_id.state);
break;}

case "obj_npc_bear":{
    ds_list_add(list,inst_id.ai_dead);
    ds_list_add(list,inst_id.ai_attack_cd);
    ds_list_add(list,inst_id.ai_reproduce_cd);
    ds_list_add(list,inst_id.death_frames);
    ds_list_add(list,inst_id.npc_food);
    ds_list_add(list,inst_id.npc_thirst);
    ds_list_add(list,inst_id.npc_health);
    ds_list_add(list,inst_id.npc_anger);
    ds_list_add(list,inst_id.npc_fear);
    ds_list_add(list,inst_id.npc_heat);
    ds_list_add(list,inst_id.state);
break;}

case "obj_npc_buck":{
    ds_list_add(list,inst_id.ai_dead);
    ds_list_add(list,inst_id.ai_attack_cd);
    ds_list_add(list,inst_id.ai_reproduce_cd);
    ds_list_add(list,inst_id.death_frames);
    ds_list_add(list,inst_id.npc_food);
    ds_list_add(list,inst_id.npc_thirst);
    ds_list_add(list,inst_id.npc_health);
    ds_list_add(list,inst_id.npc_anger);
    ds_list_add(list,inst_id.npc_fear);
    ds_list_add(list,inst_id.npc_heat);
    ds_list_add(list,inst_id.state);
break;}

case "obj_world_tree_1":{
    ds_list_add(list,inst_id.resource_id);
    ds_list_add(list,inst_id.resource_count);
    ds_list_add(list,inst_id.resource_max);
    ds_list_add(list,inst_id.tree_top_sub);
    ds_list_add(list,inst_id.tree_top_rot);
break;}

case "obj_world_rock_1":{
    ds_list_add(list,inst_id.resource_id);
    ds_list_add(list,inst_id.resource_count);
    ds_list_add(list,inst_id.scale_x);
    ds_list_add(list,inst_id.scale_y);
    ds_list_add(list,inst_id.direction);
break;}

case "obj_world_rock_2":{
    ds_list_add(list,inst_id.resource_id);
    ds_list_add(list,inst_id.resource_count);
    ds_list_add(list,inst_id.scale_x);
    ds_list_add(list,inst_id.scale_y);
    ds_list_add(list,inst_id.direction);
break;}

case "obj_env_plant1":{
    ds_list_add(list,inst_id.image_angle);
    ds_list_add(list,inst_id.leaf_status);
    ds_list_add(list,inst_id.leaf_growth);
    ds_list_add(list,inst_id.max_leaves);
break;}

case "obj_env_plant2":{
    ds_list_add(list,inst_id.image_angle);
    ds_list_add(list,inst_id.leaf_status);
    ds_list_add(list,inst_id.leaf_growth);
    ds_list_add(list,inst_id.max_leaves);
break;}

case "obj_env_plant3":{
    ds_list_add(list,inst_id.image_angle);
    ds_list_add(list,inst_id.leaf_status);
    ds_list_add(list,inst_id.leaf_growth);
    ds_list_add(list,inst_id.max_leaves);
break;}

case "obj_env_bush1":{
    ds_list_add(list,inst_id.image_angle);
    ds_list_add(list,inst_id.leaf_status);
    ds_list_add(list,inst_id.leaf_growth);
    ds_list_add(list,inst_id.max_leaves);
break;}

case "obj_wolf_grave":{
    ds_list_add(list,inst_id.fade_time);
break;}

case "obj_item_dropped":{
    ds_list_add(list,inst_id.item_id);
    ds_list_add(list,inst_id.item_stack);
break;}

case "obj_archetype_basic":{
    ds_list_add(list,inst_id.angle);
break;}

case "obj_archetype_storage":{
    ds_list_add(list,string(ds_grid_width(inst_id.c_inv)));
    ds_list_add(list,string(ds_grid_height(inst_id.c_inv)));
    list_cache = convert_grid_to_list(inst_id.c_inv);
    str = convert_list_to_string(list_cache,",");
    ds_list_add(list,str);ds_list_destroy(list_cache);
    list_cache = convert_grid_to_list(inst_id.c_stack);
    str = convert_list_to_string(list_cache,",");
    ds_list_add(list,str);ds_list_destroy(list_cache);
    ds_list_add(list,inst_id.angle);
break;}

case "obj_archetype_cooking":{
    ds_list_add(list,string(ds_grid_width(inst_id.c_inv)));
    ds_list_add(list,string(ds_grid_height(inst_id.c_inv)));
    list_cache = convert_grid_to_list(inst_id.c_inv);
    str = convert_list_to_string(list_cache,",");
    ds_list_add(list,str);ds_list_destroy(list_cache);
    list_cache = convert_grid_to_list(inst_id.c_stack);
    str = convert_list_to_string(list_cache,",");
    ds_list_add(list,str);ds_list_destroy(list_cache);
    list_cache = convert_grid_to_list(inst_id.cooking_grid);
    str = convert_list_to_string(list_cache,",");
    ds_list_add(list,str);ds_list_destroy(list_cache);
    ds_list_add(list,inst_id.is_enabled);
    ds_list_add(list,inst_id.fuel_count);
    ds_list_add(list,inst_id.angle);
break;}

case "obj_archetype_plant":{
    ds_list_add(list,inst_id.plant_id);
    ds_list_add(list,inst_id.plant_state);
break;}

}

return list;

ds_list_destroy(list);
