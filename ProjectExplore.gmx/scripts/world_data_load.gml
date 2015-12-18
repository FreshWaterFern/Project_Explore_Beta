/// world_data_load(File)

var time_track = get_timer();
file_log_write("Game load initiated| file: "+string(argument0)+" |"); // Log File Usage

var i = 0;var r = 0;
var temp_list = 0;
var list_copy = ds_list_create();
var list_size = 0;var scale = 0;
var obj_name = "";var inst = 0;
var list_cache = 0;var str = "";
var width = 0;var height = 0;

var current_tiles = 0;var total_tiles = 0;var end_read = 0;
var tile_id = 0;var tile_count = 0;var rep_count = 0;

var file = file_text_open_read(argument0);

// -- Build Version [BEGIN] -- \\
var get_version = file_text_read_string(file);file_text_readln(file);
var get_version2 = get_version;
get_version = string_delete(get_version,string_pos(", Mod: ",get_version),string_length(get_version));
get_version = string_replace(get_version,"Build: ","");
if ( get_version != string(GAME_VERSION) ){
file_log_write("Save file is from build ("+string(get_version)+"), out-of-date, build version is "+string(GAME_VERSION));} // Log File Usage

get_version2 = string_delete(get_version2,1,string_pos("Mod: ",get_version2)+4);
if ( get_version2 != string(global.mod_version) ){
file_log_write("Save file is from mod version ("+get_version2+"), out-of-date, mod version is "+global.mod_version);} // Log File Usage

// -- Build Version [END] -- \\


/*
// -- Mod Version [BEGIN] -- \\
var get_version2 = file_text_read_string(file);file_text_readln(file);
if ( get_version2 != string(global.mod_version) ){
file_log_write("Save file is from mod version ("+get_version2+"), out-of-date, mod version is "+global.mod_version);} // Log File Usage
// -- Mod Version [END] -- \\
*/


// -- World Size [BEGIN] -- \\
repeat(3){file_text_readln(file);} // Skip this part, we don't need it right now
// -- World Size [END] -- \\

// -- Player Variables [BEGIN] -- \\
file_text_readln(file);
global.clothing_body = file_text_read_string(file);file_text_readln(file);
global.clothing_head = file_text_read_string(file);file_text_readln(file);
global.char_hair_style = file_text_read_real(file);file_text_readln(file);
global.char_hair_color = file_text_read_real(file);file_text_readln(file);
global.char_hair_shirt = file_text_read_real(file);file_text_readln(file);
global.char_hair_skin = file_text_read_real(file);file_text_readln(file);
global.char_hair_legs = file_text_read_real(file);file_text_readln(file);
obj_game.v_hotbar_set = file_text_read_real(file);file_text_readln(file);
obj_game.x = file_text_read_real(file);file_text_readln(file);
obj_game.y = file_text_read_real(file);file_text_readln(file);
obj_player.x = obj_game.x;
obj_player.y = obj_game.y;
obj_camera.x = obj_game.x;
obj_camera.y = obj_game.y;
global.pl_bleeding = file_text_read_real(file);file_text_readln(file);
obj_game.c_food = file_text_read_real(file);file_text_readln(file);
obj_game.c_thirst = file_text_read_real(file);file_text_readln(file);
obj_game.c_health = file_text_read_real(file);file_text_readln(file);
obj_game.c_sanity = file_text_read_real(file);file_text_readln(file);
global.waypoint_x = file_text_read_real(file);file_text_readln(file);
global.waypoint_y = file_text_read_real(file);file_text_readln(file);
file_text_readln(file); // Equip list size goes here, size = 2
global.equip_list[|0] = file_text_read_real(file);file_text_readln(file);
global.equip_list[|1] = file_text_read_real(file);file_text_readln(file);

list_cache = convert_string_to_list(file_text_read_string(file),",");file_text_readln(file);
global.c_inventory_pack = convert_list_to_grid_real(list_cache,7,5);ds_list_destroy(list_cache);

list_cache = convert_string_to_list(file_text_read_string(file),",");file_text_readln(file);
global.c_stack_pack = convert_list_to_grid_real(list_cache,7,5);ds_list_destroy(list_cache);
// -- Player Variables [END] -- \\

// -- Player Statistics [BEGIN] -- \\
file_text_readln(file);
global.fishing_multiplier = file_text_read_real(file);file_text_readln(file);
global.distance_travelled = file_text_read_real(file);file_text_readln(file);
global.wolves_killed = file_text_read_real(file);file_text_readln(file);
global.bucks_killed = file_text_read_real(file);file_text_readln(file);
global.stalkers_killed = file_text_read_real(file);file_text_readln(file);
global.rippers_killed = file_text_read_real(file);file_text_readln(file);
global.fish_caught = file_text_read_real(file);file_text_readln(file);
global.trees_cut = file_text_read_real(file);file_text_readln(file);
global.rocks_cut = file_text_read_real(file);file_text_readln(file);
// -- Player Statistics [END] -- \\

// -- World Data [BEGIN] -- \\
file_text_readln(file);
global.world_time = file_text_read_real(file);file_text_readln(file);
global.world_days = file_text_read_real(file);file_text_readln(file);
obj_game_weather.rain_active = file_text_read_real(file);file_text_readln(file);
obj_game_weather.rain_ini = file_text_read_real(file);file_text_readln(file);
obj_game_weather.rain_time = file_text_read_real(file);file_text_readln(file);
obj_game_weather.previous_temperature = file_text_read_real(file);file_text_readln(file);
global.weather_mode = file_text_read_real(file);file_text_readln(file);
global.world_temperature_base = file_text_read_real(file);file_text_readln(file);

/* Waypoint Data */
list_size = file_text_read_real(file);file_text_readln(file);
for(i=0;i<list_size;i++){
ds_list_add(global.waypoint_data_x,file_text_read_real(file));file_text_readln(file);
ds_list_add(global.waypoint_data_y,file_text_read_real(file));file_text_readln(file);
ds_list_add(global.waypoint_data_name,file_text_read_string(file));file_text_readln(file);}

/* World Decals */
file_text_readln(file);
list_size = file_text_read_real(file);file_text_readln(file);
for(i=0;i<list_size;i++){
ds_list_add(global.ai_xdecal,file_text_read_real(file));file_text_readln(file);
ds_list_add(global.ai_ydecal,file_text_read_real(file));file_text_readln(file);
ds_list_add(global.ai_sdecal,file_text_read_string(file));file_text_readln(file);}

/* World Chunks */
file_text_readln(file);
width = file_text_read_real(file);file_text_readln(file);
height = file_text_read_real(file);file_text_readln(file);

file_text_readln(file); // -- Compression Begin -- //

total_tiles = width*height;
temp_list = ds_list_create();
while(end_read == 0 ){
tile_id = file_text_read_real(file);file_text_readln(file);
tile_count = file_text_read_real(file);file_text_readln(file);
current_tiles += tile_count;
for(i=0;i<tile_count;i++){
    ds_list_add(temp_list,tile_id);
}
if (current_tiles >= total_tiles){
end_read = 1;
}

}

for (i =0;i<width;i++) {
    for (r=0; r<height;r++) {
        global.world_chunks[#i,r] = temp_list[|i*height+r];
    }
}
ds_list_destroy(temp_list);end_read = 0;current_tiles = 0;
file_text_readln(file); // -- Compression End -- //

/* World Biomes */
file_text_readln(file);
width = file_text_read_real(file);file_text_readln(file);
height = file_text_read_real(file);file_text_readln(file);

file_text_readln(file); // -- Compression Begin -- //

total_tiles = width*height;
temp_list = ds_list_create();
while(end_read == 0 ){
tile_id = file_text_read_real(file);file_text_readln(file);
tile_count = file_text_read_real(file);file_text_readln(file);
current_tiles += tile_count;
for(i=0;i<tile_count;i++){
    ds_list_add(temp_list,tile_id);
}
if (current_tiles >= total_tiles){
end_read = 1;
}

}

for (i =0;i<width;i++) {
    for (r=0; r<height;r++) {
        global.world_biomes[#i,r] = temp_list[|i*height+r];
    }
}
ds_list_destroy(temp_list);end_read = 0;current_tiles = 0;
file_text_readln(file); // -- Compression End -- //

/* World Tiles */
file_text_readln(file);
width = file_text_read_real(file);file_text_readln(file);
height = file_text_read_real(file);file_text_readln(file);

file_text_readln(file); // -- Compression Begin -- //

total_tiles = width*height;
temp_list = ds_list_create();
while(end_read == 0 ){
tile_id = file_text_read_real(file);file_text_readln(file);
tile_count = file_text_read_real(file);file_text_readln(file);
current_tiles += tile_count;
for(i=0;i<tile_count;i++){
    ds_list_add(temp_list,tile_id);
}
if (current_tiles >= total_tiles){
end_read = 1;
}

}

for (i =0;i<width;i++) {
    for (r=0; r<height;r++) {
        global.world_tiles[#i,r] = temp_list[|i*height+r];
    }
}
ds_list_destroy(temp_list);end_read = 0;current_tiles = 0;
file_text_readln(file);
// -- Compression End -- //

// -- World Data [END] -- \\

/*
// -- Object Data [BEGIN] -- \\
list_size = file_text_read_real(file);file_text_readln(file);
for(i=0;i<list_size;i++){
ds_list_add(list_copy,file_text_read_string(file));file_text_readln(file);}
// -- Object Data [END] -- \\

file_text_close(file);

var loop_step = 0;
for(loop_step=0;loop_step<list_size;loop_step++)
{
    temp_list = convert_string_to_list(list_copy[|loop_step],","); // Write our object data into a list
    
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
        world_obj_add(inst.id);
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
        world_obj_add(inst.id);
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
        world_obj_add(inst.id);
        break;}
        
    }
ds_list_destroy(temp_list);
}

ds_list_destroy(temp_list);
ds_list_destroy(list_copy);*/

if ( file != -1 ){file_log_write("Game loaded successfully| file: "+string(argument0)+" |Time spent: "+string((get_timer()-time_track)/1000)+"ms");} // Log File Usage
else{file_log_write("Game load failed| file: "+string(argument0)+" |Time spent: "+string((get_timer()-time_track)/1000)+"ms");} // Log File Usage
