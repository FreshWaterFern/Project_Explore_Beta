/// load_game_settings()

ini_open("settings.ini");
obj_game.m_vsync = real(ini_read_string("graphics","vsync","0"));
obj_game.m_vignette = real(ini_read_string("graphics","vignette","1"));
obj_game.m_blood = real(ini_read_string("graphics","blood","1"));
obj_game.m_particles = real(ini_read_string("graphics","particles","1"));
obj_game.m_temp = real(ini_read_string("settings","temperature","0"));
obj_game.m_motionblur = 1;
global.setting_autosave = real(ini_read_string("settings","autosave","1"));
ini_close();
