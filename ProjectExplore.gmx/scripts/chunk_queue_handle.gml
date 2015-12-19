/// chunk_queue_handle(file)

gml_pragma("forceinline");

/*  
    This script will write all of our chunk data
    at once to prevent multiple file writes which
    may slow down performance.
*/

var size = ds_queue_size(queue_chunk_write);
var file = file_text_open_write(argument0);
var i = 0;

for(i=0;i<size;i++){
file_text_write_string(file,ds_queue_head(queue_chunk_write));
ds_queue_dequeue(queue_chunk_write);
file_text_writeln(file);
}

file_text_close(file);
