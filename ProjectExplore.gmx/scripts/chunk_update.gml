/// chunk_update(chunk_x,chunk_y)

// Deactivate And Re-Activate Instances
//if ( chunk_step == 0 )
global.chunk_x = global.chunk_x;
global.chunk_y = global.chunk_y;

var prefix = "worlds\"+global.world_name+"\chunks\";
var file = 0;var file_name = "";var index = 0;
x_1 = 0;x_2 = 0;y_1 = 0;y_2 = 0;
var range_list1 = ds_list_create();var range_list2 = ds_list_create();
var chunk_clear = ds_list_create();

var i = 0;var r = 0;

for(i=global.chunk_x-1;i<=global.chunk_x+1;i++){
for(r=global.chunk_y-1;r<=global.chunk_y+1;r++){
ds_list_add(range_list1,string(i)+"_"+string(r));
}}

for(i=previous_chunk_x-1;i<=previous_chunk_x+1;i++){
for(r=previous_chunk_y-1;r<=previous_chunk_y+1;r++){
ds_list_add(range_list2,string(i)+"_"+string(r));
}}

for(i=0;i<10;i++){
if ( ds_list_find_index(range_list1,range_list2[|i]) == -1 ){
ds_list_add(chunk_clear,range_list2[|i]);
}}

ds_list_destroy(range_list1);ds_list_destroy(range_list2);

var file_list = ds_list_create();

for(i=previous_chunk_x-1;i<=previous_chunk_x+1;i++){
for(r=previous_chunk_y-1;r<=previous_chunk_y+1;r++){
if ( ds_list_find_index(chunk_clear,string(i)+"_"+string(r)) != -1 ){
if ( global.world_chunks[#i,r] ){
file_name = prefix+"chunk"+string(i)+"_"+string(r)+".txt";
file_delete(file_name);
ds_list_add(file_list,file_name);

x1 = i*1280;x2 = x1+1280;y1 = r*1280;y2 = y1+1280;
show_debug_message("Clear objects and writing chunk file");
with(all){                                          // Write and save objects to their chunk files \\
if ( object_index != obj_col_attack_swing && obj_effect_parent != object_get_parent(object_index) && object_index != obj_game_render && object_index != obj_game_weather && object_index != obj_game && object_index != obj_volume && object_index != obj_player && object_index != obj_camera && object_index != obj_main_logic )
{
if ( x >= other.x1 && x < other.x2 && y >= other.y1 && y < other.y2 ){
index = ds_list_find_index(global.world_obj_ind,id);
file = file_text_open_append(file_name);
if ( index != -1 ){file_text_write_string(file,global.world_obj_data[|index]);}else{
file_text_write_string(file,convert_list_to_string(world_object_list_create(object_get_name(object_index),id),","));}
file_text_writeln(file);
file_text_close(file);
world_obj_delete(id);
instance_destroy();

}}}}

}}}

ds_list_destroy(chunk_clear);

for(i=global.chunk_x-1;i<=global.chunk_x+1;i++){
for(r=global.chunk_y-1;r<=global.chunk_y+1;r++){
file_name = prefix+"chunk"+string(i)+"_"+string(r)+".txt";
if ( ds_list_find_index(file_list,file_name) == -1 ){
if ( i < previous_chunk_x-1 or i > previous_chunk_x+1 or r < previous_chunk_y-1 or r > previous_chunk_y+1 ){

if ( global.world_chunks[#i,r] ){
file = file_text_open_read(file_name);
show_debug_message("Opened File For Reading = "+file_name);
world_generate_from_file(file);}
else{
world_generate_chunk_stay(i,r);
global.world_chunks[#i,r] = 1;
}

}}}}

ds_list_destroy(file_list);

/*
// Detect the chunk change
var detect_change = -1;
if ( previous_chunk_x < global.chunk_x ){
detect_change = 0;}
if ( previous_chunk_x > global.chunk_x ){
detect_change = 1;}
if ( previous_chunk_y < global.chunk_y ){
detect_change = 2;}
if ( previous_chunk_y > global.chunk_y ){
detect_change = 3;}

var prefix = "worlds\"+global.world_name+"\chunks\";
var chunk_get = world_get_chunk(xprevious,yprevious);
var file = 0;
var x_1 = 0;var x_2 = 0;var y_1 = 0;var y_2 = 0;

if ( detect_change == 0 ){
file_delete(prefix+"chunk"+string(chunk_get[0]-1)+"_"+string(chunk_get[1]-1)+".txt");
file_delete(prefix+"chunk"+string(chunk_get[0]-1)+"_"+string(chunk_get[1]+1)+".txt");
file_delete(prefix+"chunk"+string(chunk_get[0]-1)+"_"+string(chunk_get[1])+".txt");
file = file_text_open_append(prefix+"chunk"+string(chunk_get[0]-1)+"_"+string(chunk_get[1]-1)+".txt");
file_text_write_string(file,"// Chunk File Begin \\");file_text_writeln(file);file_text_close(file);
file = file_text_open_append(prefix+"chunk"+string(chunk_get[0]-1)+"_"+string(chunk_get[1]+1)+".txt");
file_text_write_string(file,"// Chunk File Begin \\");file_text_writeln(file);file_text_close(file);
file = file_text_open_append(prefix+"chunk"+string(chunk_get[0]-1)+"_"+string(chunk_get[1])+".txt");
file_text_write_string(file,"// Chunk File Begin \\");file_text_writeln(file);file_text_close(file);
x_1 = ((chunk_get[0]-1)*1280);x_2 = ((chunk_get[0])*1280);
y_1 = ((chunk_get[1]-1)*1280);y_2 = ((chunk_get[1]+2)*1280);
}

if ( detect_change == 1 ){
file_delete(prefix+"chunk"+string(chunk_get[0]+1)+"_"+string(chunk_get[1]-1)+".txt");
file_delete(prefix+"chunk"+string(chunk_get[0]+1)+"_"+string(chunk_get[1]+1)+".txt");
file_delete(prefix+"chunk"+string(chunk_get[0]+1)+"_"+string(chunk_get[1])+".txt");
file = file_text_open_append(prefix+"chunk"+string(chunk_get[0]+1)+"_"+string(chunk_get[1]-1)+".txt");
file_text_write_string(file,"// Chunk File Begin \\");file_text_writeln(file);file_text_close(file);
file = file_text_open_append(prefix+"chunk"+string(chunk_get[0]+1)+"_"+string(chunk_get[1]+1)+".txt");
file_text_write_string(file,"// Chunk File Begin \\");file_text_writeln(file);file_text_close(file);
file = file_text_open_append(prefix+"chunk"+string(chunk_get[0]+1)+"_"+string(chunk_get[1])+".txt");
file_text_write_string(file,"// Chunk File Begin \\");file_text_writeln(file);file_text_close(file);
x_1 = ((chunk_get[0]+1)*1280);x_2 = ((chunk_get[0]+2)*1280);
y_1 = ((chunk_get[1]+1)*1280);y_2 = ((chunk_get[1]+2)*1280);

}

if ( detect_change == 2 ){
file_delete(prefix+"chunk"+string(chunk_get[0]-1)+"_"+string(chunk_get[1]-1)+".txt");
file_delete(prefix+"chunk"+string(chunk_get[0]+1)+"_"+string(chunk_get[1]-1)+".txt");
file_delete(prefix+"chunk"+string(chunk_get[0])+"_"+string(chunk_get[1]-1)+".txt");
file = file_text_open_append(prefix+"chunk"+string(chunk_get[0]-1)+"_"+string(chunk_get[1]-1)+".txt");
file_text_write_string(file,"// Chunk File Begin \\");file_text_writeln(file);file_text_close(file);
file = file_text_open_append(prefix+"chunk"+string(chunk_get[0]+1)+"_"+string(chunk_get[1]-1)+".txt");
file_text_write_string(file,"// Chunk File Begin \\");file_text_writeln(file);file_text_close(file);
file = file_text_open_append(prefix+"chunk"+string(chunk_get[0])+"_"+string(chunk_get[1]-1)+".txt");
file_text_write_string(file,"// Chunk File Begin \\");file_text_writeln(file);file_text_close(file);
x_1 = ((chunk_get[0]-1)*1280);x_2 = ((chunk_get[0]+2)*1280);
y_1 = ((chunk_get[1]-1)*1280);y_2 = ((chunk_get[1])*1280);
}

if ( detect_change == 3 ){
file_delete(prefix+"chunk"+string(chunk_get[0]-1)+"_"+string(chunk_get[1]+1)+".txt");
file_delete(prefix+"chunk"+string(chunk_get[0]+1)+"_"+string(chunk_get[1]+1)+".txt");
file_delete(prefix+"chunk"+string(chunk_get[0])+"_"+string(chunk_get[1]+1)+".txt");
file = file_text_open_append(prefix+"chunk"+string(chunk_get[0]-1)+"_"+string(chunk_get[1]+1)+".txt");
file_text_write_string(file,"// Chunk File Begin \\");file_text_writeln(file);file_text_close(file);
file = file_text_open_append(prefix+"chunk"+string(chunk_get[0]+1)+"_"+string(chunk_get[1]+1)+".txt");
file_text_write_string(file,"// Chunk File Begin \\");file_text_writeln(file);file_text_close(file);
file = file_text_open_append(prefix+"chunk"+string(chunk_get[0])+"_"+string(chunk_get[1]+1)+".txt");
file_text_write_string(file,"// Chunk File Begin \\");file_text_writeln(file);file_text_close(file);
x_1 = ((chunk_get[0]-1)*1280);x_2 = ((chunk_get[0]+2)*1280);
y_1 = ((chunk_get[1]+1)*1280);y_2 = ((chunk_get[1]+2)*1280);
}

var index = 0;

// Write and save objects to their chunk files

with(all)
{
if ( object_index != obj_col_attack_swing && obj_effect_parent != object_get_parent(object_index) && object_index != obj_game_render && object_index != obj_game_weather && object_index != obj_game && object_index != obj_volume && object_index != obj_player && object_index != obj_camera && object_index != obj_main_logic )
{
if ( x >= x_1 && x < x_2 && y >= y_1 && y < y_2 ){
chunk_get = world_get_chunk(x,y);
index = ds_list_find_index(global.world_obj_ind,id);
file = file_text_open_append(prefix+"chunk"+string(chunk_get[0])+"_"+string(chunk_get[1])+".txt");
if ( index != -1 ){file_text_write_string(file,global.world_obj_data[|index]);}else{
file_text_write_string(file,convert_list_to_string(world_object_list_create(object_get_name(object_index),id),","));}
file_text_writeln(file);
file_text_close(file);
instance_destroy();
world_obj_delete(id);
}
}
}

// Load new objects from chunk files
if ( detect_change == 0 ){
chunk_get = world_get_chunk(x,y);
if ( file_exists(prefix+"chunk"+string(chunk_get[0]+1)+"_"+string(chunk_get[1]-1)+".txt") ){
file = file_text_open_read(prefix+"chunk"+string(chunk_get[0]+1)+"_"+string(chunk_get[1]-1)+".txt");file_text_readln(file);
world_generate_from_file(file);}else{
world_generate_chunk_stay(chunk_get[0]+1,chunk_get[1]-1);}

if ( file_exists(prefix+"chunk"+string(chunk_get[0]+1)+"_"+string(chunk_get[1])+".txt") ){
file = file_text_open_read(prefix+"chunk"+string(chunk_get[0]+1)+"_"+string(chunk_get[1])+".txt");file_text_readln(file);
world_generate_from_file(file);}else{
world_generate_chunk_stay(chunk_get[0]+1,chunk_get[1]);}

if ( file_exists(prefix+"chunk"+string(chunk_get[0]+1)+"_"+string(chunk_get[1]+1)+".txt") ){
file = file_text_open_read(prefix+"chunk"+string(chunk_get[0]+1)+"_"+string(chunk_get[1]+1)+".txt");file_text_readln(file);
world_generate_from_file(file);}else{
world_generate_chunk_stay(chunk_get[0]+1,chunk_get[1]+1);}
}

if ( detect_change == 1 ){
chunk_get = world_get_chunk(x,y);
if ( file_exists(prefix+"chunk"+string(chunk_get[0]-1)+"_"+string(chunk_get[1]-1)+".txt") ){
file = file_text_open_read(prefix+"chunk"+string(chunk_get[0]-1)+"_"+string(chunk_get[1]-1)+".txt");file_text_readln(file);
world_generate_from_file(file);}else{
world_generate_chunk_stay(chunk_get[0]-1,chunk_get[1]-1);}

if ( file_exists(prefix+"chunk"+string(chunk_get[0]-1)+"_"+string(chunk_get[1])+".txt") ){
file = file_text_open_read(prefix+"chunk"+string(chunk_get[0]-1)+"_"+string(chunk_get[1])+".txt");file_text_readln(file);
world_generate_from_file(file);}else{
world_generate_chunk_stay(chunk_get[0]-1,chunk_get[1]);}

if ( file_exists(prefix+"chunk"+string(chunk_get[0]-1)+"_"+string(chunk_get[1]+1)+".txt") ){
file = file_text_open_read(prefix+"chunk"+string(chunk_get[0]-1)+"_"+string(chunk_get[1]+1)+".txt");file_text_readln(file);
world_generate_from_file(file);}else{
world_generate_chunk_stay(chunk_get[0]-1,chunk_get[1]+1);}
}

if ( detect_change == 2 ){
chunk_get = world_get_chunk(x,y);
if ( file_exists(prefix+"chunk"+string(chunk_get[0]-1)+"_"+string(chunk_get[1]+1)+".txt") ){
file = file_text_open_read(prefix+"chunk"+string(chunk_get[0]-1)+"_"+string(chunk_get[1]+1)+".txt");file_text_readln(file);
world_generate_from_file(file);}else{
world_generate_chunk_stay(chunk_get[0]-1,chunk_get[1]+1);}

if ( file_exists(prefix+"chunk"+string(chunk_get[0])+"_"+string(chunk_get[1]+1)+".txt") ){
file = file_text_open_read(prefix+"chunk"+string(chunk_get[0])+"_"+string(chunk_get[1]+1)+".txt");file_text_readln(file);
world_generate_from_file(file);}else{
world_generate_chunk_stay(chunk_get[0],chunk_get[1]+1);}

if ( file_exists(prefix+"chunk"+string(chunk_get[0]+1)+"_"+string(chunk_get[1]+1)+".txt") ){
file = file_text_open_read(prefix+"chunk"+string(chunk_get[0]+1)+"_"+string(chunk_get[1]+1)+".txt");file_text_readln(file);
world_generate_from_file(file);}else{
world_generate_chunk_stay(chunk_get[0]+1,chunk_get[1]+1);}
}

if ( detect_change == 3 ){
chunk_get = world_get_chunk(x,y);
if ( file_exists(prefix+"chunk"+string(chunk_get[0]-1)+"_"+string(chunk_get[1]-1)+".txt") ){
file = file_text_open_read(prefix+"chunk"+string(chunk_get[0]-1)+"_"+string(chunk_get[1]-1)+".txt");file_text_readln(file);
world_generate_from_file(file);}else{
world_generate_chunk_stay(chunk_get[0]-1,chunk_get[1]-1);}

if ( file_exists(prefix+"chunk"+string(chunk_get[0])+"_"+string(chunk_get[1]-1)+".txt") ){
file = file_text_open_read(prefix+"chunk"+string(chunk_get[0])+"_"+string(chunk_get[1]-1)+".txt");file_text_readln(file);
world_generate_from_file(file);}else{
world_generate_chunk_stay(chunk_get[0],chunk_get[1]-1);}

if ( file_exists(prefix+"chunk"+string(chunk_get[0]+1)+"_"+string(chunk_get[1]-1)+".txt") ){
file = file_text_open_read(prefix+"chunk"+string(chunk_get[0]+1)+"_"+string(chunk_get[1]-1)+".txt");file_text_readln(file);
world_generate_from_file(file);}else{
world_generate_chunk_stay(chunk_get[0]+1,chunk_get[1]-1);}
}
*/

previous_chunk_x = global.chunk_x;
previous_chunk_y = global.chunk_y;
