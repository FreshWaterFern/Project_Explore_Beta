/// world_data_save(string)

var time_track = get_timer();
file_log_write("Game save initiated| file: "+string(argument0)+" |"); // Log File Usage

var list_size = 0;
var width = 0;var height = 0;
var i = 0;var r = 0;
var list_cache = 0;
var str = "";
var next_id = 0;var first_id = 0;var index_add = 0;var consec_tiles = 0;

var file = file_text_open_write(argument0);



// -- Build Version [BEGIN] -- \\
file_text_write_string(file,"Build: "+string(GAME_VERSION)+", Mod: "+string(global.mod_version));file_text_writeln(file);
// -- Build Version [END] -- \\

// -- World Size [BEGIN] -- \\
file_text_write_string(file,"//--|World Size|--\\");file_text_writeln(file);
file_text_write_real(file,room_width);file_text_writeln(file);
file_text_write_real(file,room_height);file_text_writeln(file);
// -- World Size [END] -- \\

// -- Player Variables [BEGIN] -- \\
file_text_write_string(file,"//--|Player Variables|--\\");file_text_writeln(file);
file_text_write_string(file,global.clothing_body);file_text_writeln(file);
file_text_write_string(file,global.clothing_head);file_text_writeln(file);
file_text_write_real(file,global.char_hair_style);file_text_writeln(file);
file_text_write_real(file,global.char_hair_color);file_text_writeln(file);
file_text_write_real(file,global.char_shirt);file_text_writeln(file);
file_text_write_real(file,global.char_skin);file_text_writeln(file);
file_text_write_real(file,global.char_legs);file_text_writeln(file);
file_text_write_real(file,obj_game.v_hotbar_set);file_text_writeln(file);
file_text_write_real(file,obj_game.x);file_text_writeln(file);
file_text_write_real(file,obj_game.y);file_text_writeln(file);
file_text_write_real(file,global.pl_bleeding);file_text_writeln(file);
file_text_write_real(file,obj_game.c_food);file_text_writeln(file);
file_text_write_real(file,obj_game.c_thirst);file_text_writeln(file);
file_text_write_real(file,obj_game.c_health);file_text_writeln(file);
file_text_write_real(file,obj_game.c_sanity);file_text_writeln(file);
file_text_write_real(file,global.waypoint_x);file_text_writeln(file);
file_text_write_real(file,global.waypoint_y);file_text_writeln(file);

list_size = ds_list_size(global.equip_list);
file_text_write_real(file,list_size);file_text_writeln(file); // How big is global.equip_list?
for(i=0;i<2;i++){
file_text_write_real(file,global.equip_list[|i]);file_text_writeln(file);}

list_cache = convert_grid_to_list(global.c_inventory_pack);
str = convert_list_to_string(list_cache,",");
file_text_write_string(file,str);file_text_writeln(file);
ds_list_destroy(list_cache);

list_cache = convert_grid_to_list(global.c_stack_pack);
str = convert_list_to_string(list_cache,",");
file_text_write_string(file,str);file_text_writeln(file);
ds_list_destroy(list_cache);
// -- Player Variables [END] -- \\

// -- Player Statistics [BEGIN] -- \\
file_text_write_string(file,"//--|Player Statistics|--\\");file_text_writeln(file);
file_text_write_real(file,global.fishing_multiplier);file_text_writeln(file);
file_text_write_real(file,global.distance_travelled);file_text_writeln(file);
file_text_write_real(file,global.wolves_killed);file_text_writeln(file);
file_text_write_real(file,global.bucks_killed);file_text_writeln(file);
file_text_write_real(file,global.stalkers_killed);file_text_writeln(file);
file_text_write_real(file,global.rippers_killed);file_text_writeln(file);
file_text_write_real(file,global.fish_caught);file_text_writeln(file);
file_text_write_real(file,global.trees_cut);file_text_writeln(file);
file_text_write_real(file,global.rocks_cut);file_text_writeln(file);
// -- Player Statistics [END] -- \\

// -- World Data [BEGIN] -- \\
file_text_write_string(file,"//--|World Data|--\\");file_text_writeln(file);
file_text_write_real(file,global.world_time);file_text_writeln(file);
file_text_write_real(file,global.world_days);file_text_writeln(file);
file_text_write_real(file,obj_game_weather.rain_active);file_text_writeln(file);
file_text_write_real(file,obj_game_weather.rain_ini);file_text_writeln(file);
file_text_write_real(file,obj_game_weather.rain_time);file_text_writeln(file);
file_text_write_real(file,obj_game_weather.previous_temperature);file_text_writeln(file);
file_text_write_real(file,global.weather_mode);file_text_writeln(file);
file_text_write_real(file,global.world_temperature_base);file_text_writeln(file);

/* Waypoint Data */
list_size = ds_list_size(global.waypoint_data_x);
file_text_write_real(file,list_size);file_text_writeln(file); // How big is the waypoint data list?
for(i=0;i<list_size;i++){
file_text_write_real(file,global.waypoint_data_x[|i]);file_text_write_string(file,",");
file_text_write_real(file,global.waypoint_data_y[|i]);file_text_write_string(file,",");
file_text_write_string(file,global.waypoint_data_name[|i]);file_text_writeln(file);}

/* World Decals */
file_text_write_string(file,"//--|World Decals|--\\");file_text_writeln(file);
list_size = ds_list_size(global.ai_xdecal);
file_text_write_real(file,list_size);file_text_writeln(file);
for(i=0;i<list_size;i++){
file_text_write_real(file,global.ai_xdecal[|i]);file_text_writeln(file);
file_text_write_real(file,global.ai_ydecal[|i]);file_text_writeln(file);
file_text_write_string(file,global.ai_sdecal[|i]);file_text_writeln(file);}

/* World Chunks */
file_text_write_string(file,"//--|World Chunks|--\\");file_text_writeln(file);
width = ds_grid_width(global.world_chunks);height = ds_grid_height(global.world_chunks);
file_text_write_real(file,width);file_text_writeln(file);
file_text_write_real(file,height);file_text_writeln(file);

file_text_write_string(file,"--Compression Begin--");file_text_writeln(file);
list_cache = convert_grid_to_list(global.world_chunks);
// We are compressing the grid a bit for file storage
list_size = ds_list_size(list_cache);
for(i=0;i<list_size;i++){
    consec_tiles = 1;
    first_id = list_cache[|i];
    next_id = list_cache[|i+1];
    while (first_id == next_id){
        consec_tiles++; i++;
        next_id = list_cache[|i+1];
    }
    file_text_write_real(file,first_id);file_text_writeln(file);
    file_text_write_real(file,consec_tiles);file_text_writeln(file);
}
ds_list_destroy(list_cache);

file_text_write_string(file,"--Compression End--");file_text_writeln(file);

/* World Biomes */
file_text_write_string(file,"//--|World Biomes|--\\");file_text_writeln(file);
width = ds_grid_width(global.world_biomes);height = ds_grid_height(global.world_biomes);
file_text_write_real(file,width);file_text_writeln(file);
file_text_write_real(file,height);file_text_writeln(file);

file_text_write_string(file,"--Compression Begin--");file_text_writeln(file);
list_cache = convert_grid_to_list(global.world_biomes);
// We are compressing the grid a bit for file storage
list_size = ds_list_size(list_cache);
for(i=0;i<list_size;i++){
    consec_tiles = 1;
    first_id = list_cache[|i];
    next_id = list_cache[|i+1];
    while (first_id == next_id){
        consec_tiles++; i++;
        next_id = list_cache[|i+1];
    }
    file_text_write_real(file,first_id);file_text_writeln(file);
    file_text_write_real(file,consec_tiles);file_text_writeln(file);
}
ds_list_destroy(list_cache);

file_text_write_string(file,"--Compression End--");file_text_writeln(file);

/* World Tiles */
file_text_write_string(file,"//--|World Tiles|--\\");file_text_writeln(file);
width = ds_grid_width(global.world_tiles);height = ds_grid_height(global.world_tiles);
file_text_write_real(file,width);file_text_writeln(file);
file_text_write_real(file,height);file_text_writeln(file);

file_text_write_string(file,"--Compression Begin--");file_text_writeln(file);
list_cache = convert_grid_to_list(global.world_tiles);
// We are compressing the grid a bit for file storage
list_size = ds_list_size(list_cache);
for(i=0;i<list_size;i++){
    consec_tiles = 1;
    first_id = list_cache[|i];
    next_id = list_cache[|i+1];
    while (first_id == next_id){
        consec_tiles++; i++;
        next_id = list_cache[|i+1];
    }
    file_text_write_real(file,first_id);file_text_writeln(file);
    file_text_write_real(file,consec_tiles);file_text_writeln(file);
}
ds_list_destroy(list_cache);

file_text_write_string(file,"--Compression End--");file_text_writeln(file);
// -- World Data [END] -- \\


/*
// -- Object Data [BEGIN] -- \\
list_size = ds_list_size(global.world_obj_data);
file_text_write_real(file,list_size);file_text_writeln(file); // How big is the object data list?

for(i=0;i<list_size;i++){
file_text_write_string(file,global.world_obj_data[|i]);file_text_writeln(file);}
// -- Object Data [END] -- \\
*/


file_text_close(file);

if ( file != -1 ){file_log_write("Game saved successfully| file: "+string(argument0)+" |Time spent: "+string((get_timer()-time_track)/1000)+"ms");} // Log File Usage
else{file_log_write("Game save failed| file: "+string(argument0)+" |Time spent: "+string((get_timer()-time_track)/1000)+"ms");} // Log File Usage

// Save Data Structures
/*
if ( os_type == os_windows )
{
var add_save = "";
var str1 = file_find_first(string(argument0),0);
if ( string_count(".sav",str1) == 0 )
{str1 = ".sav";}
else
{str1 = "";}
file_find_close();
if ( file_exists(string(argument0)+string(str1)) == true )
{file_delete(string(argument0)+string(str1));}
}
else
{
if ( os_type != os_windows )
{
str1 = "";
}
var slot_found = false;
if ( string_pos(".sav",argument0) == 0 ){var add_save = ".sav";}else{var add_save = "";}
//show_message(string(argument0+add_save));
ini_open("save_index.ini");
if ( ini_read_string("data","save1","") != "" or ini_read_string("data","save1","") == argument0+add_save )
{ini_write_string("data","save1",argument0+add_save);slot_found = true;}else{ini_write_string("data","save1","");}
if ( ini_read_string("data","save2","") != "" && slot_found == false or ini_read_string("data","save2","") == argument0+add_save )
{ini_write_string("data","save2",argument0+add_save);slot_found = true;}else{ini_write_string("data","save2","");}
if ( ini_read_string("data","save3","") != "" && slot_found == false or ini_read_string("data","save3","") == argument0+add_save )
{ini_write_string("data","save3",argument0+add_save);slot_found = true;}else{ini_write_string("data","save3","");}
if ( ini_read_string("data","save4","") != "" && slot_found == false or ini_read_string("data","save4","") == argument0+add_save )
{ini_write_string("data","save4",argument0+add_save);slot_found = true;}else{ini_write_string("data","save4","");}
if ( ini_read_string("data","save5","") != "" && slot_found == false or ini_read_string("data","save5","") == argument0+add_save )
{ini_write_string("data","save5",argument0+add_save);slot_found = true;}else{ini_write_string("data","save5","");}
if ( ini_read_string("data","save6","") != "" && slot_found == false or ini_read_string("data","save6","") == argument0+add_save )
{ini_write_string("data","save6",argument0+add_save);slot_found = true;}else{ini_write_string("data","save6","");}
if ( ini_read_string("data","save7","") != "" && slot_found == false or ini_read_string("data","save7","") == argument0+add_save )
{ini_write_string("data","save7",argument0+add_save);slot_found = true;}else{ini_write_string("data","save7","");}
if ( ini_read_string("data","save8","") != "" && slot_found == false or ini_read_string("data","save8","") == argument0+add_save )
{ini_write_string("data","save8",argument0+add_save);slot_found = true;}else{ini_write_string("data","save8","");}
if ( ini_read_string("data","save9","") != "" && slot_found == false or ini_read_string("data","save9","") == argument0+add_save )
{ini_write_string("data","save9",argument0+add_save);slot_found = true;}else{ini_write_string("data","save9","");}
ini_write_string("data","save1",argument0+add_save);
ini_close();
}*/
