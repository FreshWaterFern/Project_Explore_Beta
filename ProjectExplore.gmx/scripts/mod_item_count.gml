/// mod_item_count(file)
// Get Item Count
var file_total1 = 0;
var file1=0;
file1=file_text_open_read(argument0);
while(!file_text_eof(file1))
{file_text_readln(file1);file_total1++;}
file_total1=(file_total1/10); // Item Count
file_text_close(file1);

return file_total1;
