/// scr_map_menu(index)
switch(argument0)
{
    case 0:
    {
    global.save_loading = false;
    m_control = false;
    audio_play_sound(snd_click01,4,false);
    with(text_inst){global.world_name = str;}
    if ( os_type != os_windows )
    {global.world_name = global.world_name + ".sav";}
    room_goto(room_character_editor);
    break;
    }
    case 1:
    {
    audio_play_sound(snd_click01,4,false);
    if ( global.world_size == "Small" )
    {
    global.world_size = "Medium";exit;
    }
    if ( global.world_size == "Medium" )
    {
    global.world_size = "Large";exit;
    }
    if ( global.world_size == "Large" )
    {
    global.world_size = "Extra Large";exit;
    }
    if ( global.world_size == "Extra Large" )
    {
    global.world_size = "Small";exit;
    }
    break;
    }
    case 2:
    {
    m_control = false;
    obj_menu_start.m_control = true;
    io_clear();
    audio_play_sound(snd_click01,4,false);
    instance_destroy();
    break;
    }
}
