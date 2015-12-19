/// unload_game_data()
/*
This script will clear out every data structure and
texture created by obj_game_render and obj_game
It will also remove all game audio from memory
*/

// Cycle through external sprite array and delete internal memory
var i = 0;
var size = 0;

ds_list_destroy(global.sprite_list);
ds_list_destroy(global.biome_file_list);
ds_list_destroy(global.mod_BL_list);
ds_grid_destroy(global.item_data);
ds_grid_destroy(global.crafting_data);
ds_grid_destroy(global.object_data);
ds_map_destroy(global.item_map);
ds_map_destroy(global.crafting_map);
ds_map_destroy(global.object_map);

mod_biome_clear(obj_game.biome_data);

background_delete(global.bg_menu);

size = ds_list_size(global.texture_page_list);
for(i=0;i<size;i++){
if ( background_exists(global.texture_page_list[|i]) ){
background_delete(global.texture_page_list[|i]);}
}

ds_list_destroy(global.texture_page_list);

if ( instance_exists(obj_menu_mainmenu) ){
with(obj_menu_mainmenu){

gm_restart = 1;

audio_stop_sound(audio_track);
audio_destroy_stream(audio_track);

if ( ds_exists(obj_volume.list_music,ds_type_list) ){
ds_list_destroy(obj_volume.list_music);}

if ( ds_exists(obj_volume.list_sounds,ds_type_list) ){
ds_list_destroy(obj_volume.list_sounds);}

if ( ds_exists(obj_volume.list_ambience,ds_type_list) ){
ds_list_destroy(obj_volume.list_ambience);}

ds_list_destroy(file_list);
ds_list_destroy(mod_cache_list);

if(surface_exists(surface_main)){
surface_free(surface_main);}

// Clear arrays
inst_input = 0;
cache_y = 0;
cache_x = 0;
control_cache = 0;
control_set = 0;
}

image_system_cleanup();

}
