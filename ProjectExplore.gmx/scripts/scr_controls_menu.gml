/// scr_controls_menu()
io_clear();
obj_menu_options.m_control = true;
obj_volume.mode = 1;
audio_play_sound(snd_click01,4,false);
instance_destroy();
