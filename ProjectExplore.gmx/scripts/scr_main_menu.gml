/// scr_main_menu(index)
switch(argument0)
{
    case 0:
    {
    m_control = false;
    audio_play_sound(snd_click01,4,false);
    instance_create(x+512,y,obj_menu_start);
    break;
    }
    case 1:
    {
    audio_play_sound(snd_click01,4,false);
    show_message("Unfortunately this feature has not yet been implemented.");
    //room_goto(room_mplay);
    break;
    }
    case 2:
    {
    m_control = false;
    audio_play_sound(snd_click01,4,false);
    instance_create(x+512,y,obj_menu_options);
    break;
    }
    case 3:
    {
    m_control = false;
    audio_play_sound(snd_click01,4,false);
    io_clear();
    room_goto(room_credits);
    break;
    }
    case 4:
    {
    m_control = false;
    audio_play_sound(snd_click01,4,false);
    game_end();
    break;
    }
}
