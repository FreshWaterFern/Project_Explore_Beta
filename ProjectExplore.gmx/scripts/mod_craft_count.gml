/// mod_craft_count(file)
// Get recipe count
var file_total1 = 0;
var file1=0;
file1=file_text_open_read(argument0);
while(!file_text_eof(file1))
{file_text_readln(file1);file_total1++;}
file_total1=(file_total1/9); // Crafting recipe count
file_text_close(file1);

return file_total1;
