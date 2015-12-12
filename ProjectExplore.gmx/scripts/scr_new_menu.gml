/// scr_main_menu(index)
switch(argument0)
{
    case 0:
    {
    global.save_loading = false;
    m_control = false;
    audio_play_sound(snd_click01,4,false);
    instance_create(x,y+240,obj_menu_map);
    break;
    }
    case 1:
    {
    m_control = false;
    audio_play_sound(snd_click01,4,false);
    instance_create(x,y,obj_menu_loadgame);
    break;
    }
    case 2:
    {
    m_control = false;
    obj_menu_main.m_control = true;
    audio_play_sound(snd_click01,4,false);
    instance_destroy();
    break;
    }
}
