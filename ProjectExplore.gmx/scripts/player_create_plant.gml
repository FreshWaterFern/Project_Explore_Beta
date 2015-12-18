/// player_create_plant(x,y)

var inst = instance_create(argument0,argument1,obj_archetype_plant);

// Pass the plant object all the info associated with it \\
with(inst){
var index = other.v_item_equipped;
var list = convert_string_to_list(global.item_data[#index,6],",");
growth_rate = real(list[|0]);
plant_final_state = real(list[|1]);
ds_list_destroy(list);
list = convert_string_to_list(global.item_data[#index,7],",");
item_drop = db_item_get_name(list[|0]);
item_drop_count = real(list[|1]);
item_final_drop = db_item_get_name(list[|2]);
item_final_drop_count = real(list[|3]);
ds_list_destroy(list);
list = convert_string_to_list(global.item_data[#index,8],",");
item_drop_random_min = real(list[|0]);
item_drop_random_max = real(list[|1]);
item_final_drop_random_min = real(list[|2]);
item_final_drop_random_max = real(list[|3]);
ds_list_destroy(list);
plant_id = index;
sprite = ds_list_find_value(global.item_data[#plant_id,2],floor(plant_state));
spr_height = image_get_height(ds_list_find_value(global.item_data[#index,2],1));
world_obj_add(id);
}
