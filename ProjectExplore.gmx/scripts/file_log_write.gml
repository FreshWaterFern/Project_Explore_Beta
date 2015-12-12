/// file_log_write(string)
global.file_log = file_text_open_append(global.file_log_dest);
file_text_write_string(global.file_log,string(argument0));file_text_writeln(global.file_log);file_text_close(global.file_log);
