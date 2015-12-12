/// scr_graphics_menu(index)
switch(argument0)
{
    case 0:
    {
    audio_play_sound(snd_click01,4,false);
    io_clear();
    obj_menu_options.m_control = true;
    var get_aa_level = 0;
    if ( global.m_aa == 0 ){get_aa_level = 0};if ( global.m_aa == 1 ){get_aa_level = 2};
    if ( global.m_aa == 2 ){get_aa_level = 4};if ( global.m_aa == 3 ){get_aa_level = 8};
    var display_w = 0;var display_h = 0;
    if ( global.m_res == "800x600" ){display_w=800;display_h=600;}
    if ( global.m_res == "1024x600" ){display_w=1024;display_h=600;}
    if ( global.m_res == "1024x768" ){display_w=1024;display_h=768;}
    if ( global.m_res == "1152x864" ){display_w=1152;display_h=864;}
    if ( global.m_res == "1280x720" ){display_w=1280;display_h=720;}
    if ( global.m_res == "1280x768" ){display_w=1280;display_h=768;}
    if ( global.m_res == "1280x800" ){display_w=1280;display_h=800;}
    if ( global.m_res == "1280x960" ){display_w=1280;display_h=960;}
    if ( global.m_res == "1280x1024" ){display_w=1280;display_h=1024;}
    if ( global.m_res == "1360x768" ){display_w=1360;display_h=768;}
    if ( global.m_res == "1366x768" ){display_w=1366;display_h=768;}
    if ( global.m_res == "1400x1050" ){display_w=1400;display_h=1050;}
    if ( global.m_res == "1440x900" ){display_w=1440;display_h=900;}
    if ( global.m_res == "1600x900" ){display_w=1600;display_h=900;}
    if ( global.m_res == "1600x1200" ){display_w=1600;display_h=1200;}
    if ( global.m_res == "1680x1050" ){display_w=1680;display_h=1050;}
    if ( global.m_res == "1920x1080" ){display_w=1920;display_h=1080;}
    display_reset(get_aa_level,global.m_vsync);
    window_set_size(display_w,display_h);
    if ( global.m_fullscreen == 1 )
    {
    window_set_fullscreen(true);
    }
    else
    {
    window_set_fullscreen(false);
    }
    instance_destroy();
    break;
    }
    
    case 1:
    {
    audio_play_sound(snd_click01,4,false);
    if ( global.m_vignette == 0 )
    {
    global.m_vignette = 1;
    }
    else
    {
    global.m_vignette = 0;
    }
    ini_open("settings.ini");ini_write_string("graphics","vignette",string(global.m_vignette));ini_close();
    break;
    }
    
    case 2:
    {
    audio_play_sound(snd_click01,4,false);
    if ( global.m_blood == 0 )
    {
    global.m_blood = 1;
    }
    else
    {
    global.m_blood = 0;
    }
    ini_open("settings.ini");ini_write_string("graphics","blood",string(global.m_blood));ini_close();
    break;
    }
    
    case 3:
    {
    audio_play_sound(snd_click01,4,false);
    if ( global.m_vsync == 0 )
    {
    global.m_vsync = 1;
    }
    else
    {
    global.m_vsync = 0;
    }
    ini_open("settings.ini");ini_write_string("graphics","vsync",string(global.m_vsync));ini_close();
    break;
    }
    
    case 4:
    {
    audio_play_sound(snd_click01,4,false);
    if ( global.m_particles == 0 )
    {
    global.m_particles = 1;
    }
    else
    {
    global.m_particles = 0;
    }
    ini_open("settings.ini");ini_write_string("graphics","particles",string(global.m_particles));ini_close();
    break;
    }
    
    case 5:
    {
    audio_play_sound(snd_click01,4,false);
    io_clear();
    var clicked = false;
    var get_aa_level = 0;
    if ( global.m_res == "800x600" && clicked == false ){global.m_res = "1024x600";clicked=true;}
    if ( global.m_res == "1024x600" && clicked == false ){global.m_res = "1024x768";clicked=true;}
    if ( global.m_res == "1024x768" && clicked == false ){global.m_res = "1152x864";clicked=true;}
    if ( global.m_res == "1152x864" && clicked == false ){global.m_res = "1280x720";clicked=true;}
    if ( global.m_res == "1280x720" && clicked == false ){global.m_res = "1280x768";clicked=true;}
    if ( global.m_res == "1280x768" && clicked == false ){global.m_res = "1280x800";clicked=true;}
    if ( global.m_res == "1280x800" && clicked == false ){global.m_res = "1280x960";clicked=true;}
    if ( global.m_res == "1280x960" && clicked == false ){global.m_res = "1280x1024";clicked=true;}
    if ( global.m_res == "1280x1024" && clicked == false ){global.m_res = "1360x768";clicked=true;}
    if ( global.m_res == "1360x768" && clicked == false ){global.m_res = "1366x768";clicked=true;}
    if ( global.m_res == "1366x768" && clicked == false ){global.m_res = "1400x1050";clicked=true;}
    if ( global.m_res == "1400x1050" && clicked == false ){global.m_res = "1440x900";clicked=true;}
    if ( global.m_res == "1440x900" && clicked == false ){global.m_res = "1600x900";clicked=true;}
    if ( global.m_res == "1600x900" && clicked == false ){global.m_res = "1600x1200";clicked=true;}
    if ( global.m_res == "1600x1200" && clicked == false ){global.m_res = "1680x1050";clicked=true;}
    if ( global.m_res == "1680x1050" && clicked == false ){global.m_res = "1920x1080";clicked=true;}
    if ( global.m_res == "1920x1080" && clicked == false ){global.m_res = "800x600";clicked=true;}
    ini_open("settings.ini");ini_write_string("graphics","resolution",string(global.m_res));ini_close();
    break;
    }
    
    case 6:
    {
    audio_play_sound(snd_click01,4,false);
    if ( global.m_fullscreen == 0 )
    {
    global.m_fullscreen = 1;
    }
    else
    {
    global.m_fullscreen = 0;
    }
    ini_open("settings.ini");ini_write_string("graphics","fullscreen",string(global.m_fullscreen));ini_close();
    break;
    }
}
