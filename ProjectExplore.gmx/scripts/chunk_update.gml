/// chunk_update(chunk_x,chunk_y,re-activate)

// Deactivate And Re-Activate Instances
if ( chunk_step == 0 )
{
chunk_step_x = global.chunk_x;
chunk_step_y = global.chunk_y;

with(all)
{
if ( object_index != obj_game_render && object_index != obj_game_weather && object_index != obj_game && object_index != obj_volume && object_index != obj_player && object_index != obj_camera && object_index != obj_main_logic )
{
instance_deactivate_object(self);
}
}
previous_chunk_x = global.chunk_x;
previous_chunk_y = global.chunk_y;
instance_activate_region((argument0-1)*1280,(argument1-1)*1280,3840,3840,true);
}
