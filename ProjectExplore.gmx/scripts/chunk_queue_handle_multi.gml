/// chunk_queue_handle_multi()

gml_pragma("forceinline");

/*  
    This script will write all of our chunk data
    at once to prevent multiple file writes which
    may slow down performance. This one is different
    because it will address multiple files at once if
    needed
*/

var size = ds_queue_size(queue_chunk_write_step);
var size_cache = 0;
var file = 0;
var i = 0;

var file_list = ds_list_create();


if ( size > 0 )
{
size = ds_list_size(file_list_queue);

if ( size <= 31 ){
for(i=0;i<size;i++){
file_delete(file_list_queue[|i]);
show_debug_message("Opened File For Queue: "+file_list_queue[|i]);
ds_list_add(file_list,file_text_open_write(file_list_queue[|i]));
}

size = ds_queue_size(queue_file_list);

for(i=0;i<size;i++){
file_text_write_string(file_list[|ds_queue_head(queue_file_list)],ds_queue_head(queue_chunk_write_step));
file_text_writeln(file_list[|ds_queue_head(queue_file_list)]);
ds_queue_dequeue(queue_file_list);ds_queue_dequeue(queue_chunk_write_step);
}

size = ds_list_size(file_list_queue);

for(i=0;i<size;i++){
file_text_close(file_list[|i]);
}

ds_list_destroy(file_list);
ds_list_clear(file_list_queue);
}
}
