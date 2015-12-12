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
