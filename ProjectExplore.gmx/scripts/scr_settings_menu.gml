/// scr_settings_menu(index)
switch(argument0)
{
    case 0:
    {
    audio_play_sound(snd_click01,4,false);
    io_clear();
    m_control = false;
    obj_menu_options.m_control = true;
    instance_destroy();
    break;
    }
    
    case 1:
    {
    audio_play_sound(snd_click01,4,false);
    if ( global.render_temp == 0 )
    {
    global.render_temp = 1;
    }
    else
    {
    global.render_temp = 0;
    }
    ini_open("settings.ini");ini_write_string("settings","temperature",string(global.render_temp));ini_close();
    break;
    }
    
    case 2:
    {
    audio_play_sound(snd_click01,4,false);
    if ( global.setting_autosave <= 5 && global.setting_autosave >= 0 ){global.setting_autosave ++;}
    if ( global.setting_autosave > 5 ){global.setting_autosave = 0;}
    ini_open("settings.ini");ini_write_string("settings","autosave",string(global.setting_autosave));ini_close();
    break;
    }
    
    case 3:
    {
    audio_play_sound(snd_click01,4,false);
    if ( global.tablet_mode == 1 ){global.tablet_mode = 0;global.tablet_scaling=0;}else{global.tablet_mode = 1;global.tablet_scaling=1;}
    ini_open("settings.ini");ini_write_string("settings","tablet_mode",string(global.tablet_mode));ini_close();
    break;
    }
}
