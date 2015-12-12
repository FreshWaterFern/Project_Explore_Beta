/// scr_loadgame_menu(index)
switch(argument0)
{
    case 0:
    {
    audio_play_sound(snd_click01,4,false);
    io_clear();
    m_control = false;
    obj_menu_start.m_control = true;
    instance_destroy();
    break;
    }
    
    case 1:
    {
    audio_play_sound(snd_click01,4,false);
    io_clear();
    global.save_loading = true;
    global.world_name = m_str[1];
    var file = file_text_open_read(m_str[1]);file_text_readln(file);file_text_readln(file);
    room_set_width(room_world_editor,file_text_read_real(file));file_text_readln(file);
    room_set_height(room_world_editor,file_text_read_real(file));file_text_readln(file);
    file_text_close(file);
    room_goto(room_world_editor);
    break;
    }
    
    case 2:
    {
    audio_play_sound(snd_click01,4,false);
    io_clear();
    global.save_loading = true;
    global.world_name = m_str[2];
    var file = file_text_open_read(m_str[2]);file_text_readln(file);file_text_readln(file);
    room_set_width(room_world_editor,file_text_read_real(file));file_text_readln(file);
    room_set_height(room_world_editor,file_text_read_real(file));file_text_readln(file);
    file_text_close(file);
    room_goto(room_world_editor);
    break;
    }
    
    case 3:
    {
    audio_play_sound(snd_click01,4,false);
    io_clear();
    global.save_loading = true;
    global.world_name = m_str[3];
    var file = file_text_open_read(m_str[3]);file_text_readln(file);file_text_readln(file);
    room_set_width(room_world_editor,file_text_read_real(file));file_text_readln(file);
    room_set_height(room_world_editor,file_text_read_real(file));file_text_readln(file);
    file_text_close(file);
    room_goto(room_world_editor);
    break;
    }
    
    case 4:
    {
    audio_play_sound(snd_click01,4,false);
    io_clear();
    global.save_loading = true;
    global.world_name = m_str[4];
    var file = file_text_open_read(m_str[4]);file_text_readln(file);file_text_readln(file);
    room_set_width(room_world_editor,file_text_read_real(file));file_text_readln(file);
    room_set_height(room_world_editor,file_text_read_real(file));file_text_readln(file);
    file_text_close(file);
    room_goto(room_world_editor);
    break;
    }
    
    case 5:
    {
    audio_play_sound(snd_click01,4,false);
    io_clear();
    global.save_loading = true;
    global.world_name = m_str[5];
    var file = file_text_open_read(m_str[5]);file_text_readln(file);file_text_readln(file);
    room_set_width(room_world_editor,file_text_read_real(file));file_text_readln(file);
    room_set_height(room_world_editor,file_text_read_real(file));file_text_readln(file);
    file_text_close(file);
    room_goto(room_world_editor);
    break;
    }
    
    case 6:
    {
    audio_play_sound(snd_click01,4,false);
    io_clear();
    global.save_loading = true;
    global.world_name = m_str[6];
    var file = file_text_open_read(m_str[6]);file_text_readln(file);file_text_readln(file);
    room_set_width(room_world_editor,file_text_read_real(file));file_text_readln(file);
    room_set_height(room_world_editor,file_text_read_real(file));file_text_readln(file);
    file_text_close(file);
    room_goto(room_world_editor);
    break;
    }
    
    case 7:
    {
    audio_play_sound(snd_click01,4,false);
    io_clear();
    global.save_loading = true;
    global.world_name = m_str[7];
    var file = file_text_open_read(m_str[7]);file_text_readln(file);file_text_readln(file);
    room_set_width(room_world_editor,file_text_read_real(file));file_text_readln(file);
    room_set_height(room_world_editor,file_text_read_real(file));file_text_readln(file);
    file_text_close(file);
    room_goto(room_world_editor);
    break;
    }
    
    case 8:
    {
    audio_play_sound(snd_click01,4,false);
    io_clear();
    global.save_loading = true;
    global.world_name = m_str[8];
    var file = file_text_open_read(m_str[8]);file_text_readln(file);file_text_readln(file);
    room_set_width(room_world_editor,file_text_read_real(file));file_text_readln(file);
    room_set_height(room_world_editor,file_text_read_real(file));file_text_readln(file);
    file_text_close(file);
    room_goto(room_world_editor);
    break;
    }
    
    case 9:
    {
    audio_play_sound(snd_click01,4,false);
    io_clear();
    global.save_loading = true;
    global.world_name = m_str[9];
    var file = file_text_open_read(m_str[9]);file_text_readln(file);file_text_readln(file);
    room_set_width(room_world_editor,file_text_read_real(file));file_text_readln(file);
    room_set_height(room_world_editor,file_text_read_real(file));file_text_readln(file);
    file_text_close(file);
    room_goto(room_world_editor);
    break;
    }
    
    case 10:
    {
    audio_play_sound(snd_click01,4,false);
    io_clear();
    global.save_loading = true;
    global.world_name = m_str[10];
    var file = file_text_open_read(m_str[10]);file_text_readln(file);file_text_readln(file);
    room_set_width(room_world_editor,file_text_read_real(file));file_text_readln(file);
    room_set_height(room_world_editor,file_text_read_real(file));file_text_readln(file);
    file_text_close(file);
    room_goto(room_world_editor);
    break;
    }
}
