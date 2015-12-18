/// world_data_ini()

/*
This will initialize all of the data structures 
and variables needed for the world
*/

// World data \\
global.world_obj_data = ds_list_create();
global.world_obj_ind = ds_list_create();

// Chunk, biome, and temperature data \\
global.world_chunks = ds_grid_create(floor(room_width/1280)+15,floor(room_height/1280)+15);
ds_grid_clear(global.world_chunks,0);
global.world_biomes = ds_grid_create(floor(room_width/1280)+15,floor(room_height/1280)+15);
global.world_temperature = ds_grid_create(floor(room_width/512)+15,floor(room_height/512)+15);
global.world_temperature_base = floor(random_range(70,83));

// World time \\
obj_game.time_speed = 0.0008;
global.world_time = time_speed;
global.world_days = 1;

// Status update message initialization \\
global.status_map = status_ini();
global.status_list = ds_list_create();

// Waypoint system initialization \\
global.waypoint_data_x = ds_list_create();
global.waypoint_data_y = ds_list_create();
global.waypoint_data_name = ds_list_create();
global.waypoint_x = 0;global.waypoint_y = 0;

// Roof loop data structure \\
global.roof_list = ds_list_create();

// Client related world variables \\
global.chunk_x = 0;
global.chunk_y = 0;

// Create our directory to store chunk data
if ( global.new_game == true ){
var dir_exists = directory_exists("worlds\"+global.world_folder);
var num = 0;
while(dir_exists){
dir_exists = directory_exists("worlds\"+global.world_folder+string(num));
num++;
if ( !dir_exists ){global.world_folder = global.world_folder+string(num);}
}

directory_create("worlds\"+global.world_folder);
directory_create("worlds\"+global.world_folder+"\chunks");

global.world_name = global.world_folder;
}

// File handling for chunks
/*
if ( global.new_game == true ){
var file_use = 0;var prefix = "worlds\"+global.world_folder+"\chunks\";
var rm_width = floor(room_width/1280)+1;var rm_height = floor(room_height/1280)+1;
var r1 = 0; var r2 = 0;
var prefix2 = "chunk"+string(r1)+"_"+string(r2)+".txt";
for(r1=-1;r1<rm_width;r1++){
for(r2=-1;r2<rm_height;r2++){
prefix2 = "chunk"+string(r1)+"_"+string(r2)+".txt";
file_use = file_text_open_write(prefix+prefix2);
file_text_write_string(file_use,"// Chunk File Begin \\");file_text_writeln(file_use);
file_text_close(file_use);
}}}*/
