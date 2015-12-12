/// file_log_ini(file)
global.file_log_dest = argument0;
global.file_log = 0;
var i = 0;var file_test = global.file_log_dest+string(i);
if ( !directory_exists("logs") ){directory_create("logs")}

while ( file_exists(file_test+".txt") ) // Step through our log files until we have found a name that hasn't been taken file_name(i).txt
{file_test = global.file_log_dest+string(i);i++;}

global.file_log_dest = file_test+".txt";

global.file_log = file_text_open_write(global.file_log_dest);
file_text_write_string(global.file_log,"Logging system initiated... ("+string(current_time)+"ms since game was launched)");file_text_writeln(global.file_log);
file_text_close(global.file_log);
