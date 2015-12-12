/// Graphics_File_Update()
ini_open("graphics.ini");
ini_write_real("data","sampling",obj_main_logic.g_sampling);
ini_write_real("data","vsync",obj_main_logic.g_vsync);
ini_write_real("data","fullscreen",obj_main_logic.g_fs);
ini_write_real("data","resolution",obj_main_logic.g_res);
ini_write_real("data","decals",obj_main_logic.g_decals);
ini_write_real("data","blood",obj_main_logic.g_blood);
ini_close();
