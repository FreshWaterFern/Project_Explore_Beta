/// pause_game(mode)

if ( argument0 == 0 )
{
audio_pause_all();
global.game_pause = true;
/*(
instance_deactivate_object(all);
instance_activate_object(obj_game_render);
instance_activate_object(obj_game_weather);
instance_activate_object(obj_game);
instance_activate_object(obj_volume);*/
with(all)
{
if ( object_index != obj_game_render && object_index != obj_camera && object_index != obj_game_weather && object_index != obj_game && object_index != obj_volume && object_index != obj_main_logic )
{
instance_deactivate_object(self);
}
}
obj_game.render_gui_1 = false;
obj_game.render_world_tiles = false;
obj_game.render_world_shadows = false;
instance_create(view_xview[0],view_yview[0],obj_pause_menu);
}
else
{
audio_resume_all();
with(obj_pause_menu){instance_destroy();}
global.game_pause = false;
instance_activate_object(obj_player);
instance_activate_region((global.chunk_x-1)*1280,(global.chunk_y-1)*1280,3840,3840,true);
obj_game.render_gui_1 = true;
obj_game.render_world_tiles = true;
obj_game.render_world_shadows = true;
}
