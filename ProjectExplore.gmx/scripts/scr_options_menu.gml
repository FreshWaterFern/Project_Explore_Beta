/// scr_options_menu(index)
switch(argument0)
{
    case 0:
    {
    audio_play_sound(snd_click01,4,false);
    io_clear();
    m_control = false;
    instance_create(x,y,obj_menu_settings);
    break;
    }
    
    case 1:
    {
    audio_play_sound(snd_click01,4,false);
    io_clear();
    m_control = false;
    instance_create(x,y,obj_menu_graphics);
    break;
    }
    
    case 2:
    {
    audio_play_sound(snd_click01,4,false);
    io_clear();
    m_control = false;
    instance_create(x,y,obj_menu_audio);
    obj_volume.mode = 0;
    break;
    }
    
    case 3:
    {
    if ( os_type != os_android ){
    audio_play_sound(snd_click01,4,false);
    io_clear();
    m_control = false;
    instance_create(x,y,obj_menu_controls);}else{
    audio_play_sound(snd_click01,4,false);
    obj_menu_main.m_control = true;
    m_control = false;
    instance_destroy();}
    break;
    }
    
    case 4:
    {
    if ( os_type != os_android ){
    audio_play_sound(snd_click01,4,false);
    obj_menu_main.m_control = true;
    m_control = false;
    instance_destroy();}
    break;
    }
}
