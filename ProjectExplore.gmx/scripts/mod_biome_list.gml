/// mod_biome_list()

gml_pragma("forceinline");

var file_name = "";
var file = 0;
var list_size = ds_list_size(global.biome_file_list);
var temp_list = 0;
var size = 0;
var time_track = 0;
var i = 0;var r1 = 0;var r2 = 0;var file_step = 0;
var str = "";
var biome_data = ds_list_create();

for(file_step=0;file_step<list_size;file_step++){

file_name = global.biome_file_list[|file_step];

file = file_text_open_read(string_replace(string_replace(file_name," = 0","")," = 1",""));
file_log_write("Opened biome file for reading.| File name: "+string(string_replace(string_replace(file_name," = 0","")," = 1","")));
if ( file != -1 ){

for(i=0;i<list_size;i++){

time_track = get_timer();

while(!file_text_eof(file)){

file_name = global.biome_file_list[|i];
size = ds_list_size(biome_data);
ds_list_add(biome_data,ds_map_create());
ds_map_add(biome_data[|size],"Name",string_replace(file_text_read_string(file),"name: ",""));file_text_readln(file);
ds_map_add(biome_data[|size],"Chance",real(string_replace(file_text_read_string(file),"chance: ","")));file_text_readln(file);
temp_list = convert_string_to_list(string_replace(file_text_read_string(file),"trees: ",""),",");file_text_readln(file);
ds_map_add(biome_data[|size],"Tree_Max",real(temp_list[|0]));
ds_map_add(biome_data[|size],"Tree_Chance",real(temp_list[|1]));
ds_list_destroy(temp_list);
temp_list = convert_string_to_list(string_replace(file_text_read_string(file),"fruit_bushes: ",""),",");file_text_readln(file);
ds_map_add(biome_data[|size],"FruitBush_Max",real(temp_list[|0]));
ds_map_add(biome_data[|size],"FruitBush_Chance",real(temp_list[|1]));
ds_list_destroy(temp_list);
temp_list = convert_string_to_list(string_replace(file_text_read_string(file),"leaf_bushes: ",""),",");file_text_readln(file);
ds_map_add(biome_data[|size],"LeafBush_Max",real(temp_list[|0]));
ds_map_add(biome_data[|size],"LeafBush_Chance",real(temp_list[|1]));
ds_list_destroy(temp_list);
temp_list = convert_string_to_list(string_replace(file_text_read_string(file),"wolf_spawn: ",""),",");file_text_readln(file);
ds_map_add(biome_data[|size],"Wolf_Max",real(temp_list[|0]));
ds_map_add(biome_data[|size],"Wolf_Chance",real(temp_list[|1]));
ds_list_destroy(temp_list);
temp_list = convert_string_to_list(string_replace(file_text_read_string(file),"bear_spawn: ",""),",");file_text_readln(file);
ds_map_add(biome_data[|size],"Bear_Max",real(temp_list[|0]));
ds_map_add(biome_data[|size],"Bear_Chance",real(temp_list[|1]));
ds_list_destroy(temp_list);
temp_list = convert_string_to_list(string_replace(file_text_read_string(file),"deer_spawn: ",""),",");file_text_readln(file);
ds_map_add(biome_data[|size],"Deer_Max",real(temp_list[|0]));
ds_map_add(biome_data[|size],"Deer_Chance",real(temp_list[|1]));
ds_list_destroy(temp_list);

// Temporarily skip the object_spawn_list
file_text_readln(file);
str = file_text_read_string(file);

ds_map_add(biome_data[|size],"Objects",ds_list_create());

while(str != "terrain_grid:"){
file_text_readln(file);
temp_list = convert_string_to_list(str,",");
if ( is_undefined(db_object_get_name(temp_list[|0])) ){
if ( !is_undefined(db_item_get_name(temp_list[|0])) ){
ds_list_add(ds_map_find_value(biome_data[|size],"Objects"),str);
}
}
else{
ds_list_add(ds_map_find_value(biome_data[|size],"Objects"),str);
}
ds_list_destroy(temp_list);

str = file_text_read_string(file);
}

// Load terrain data from file
file_text_readln(file); // Skipe line that says 'terrain_grid:'
for(r1=0;r1<10;r1++){
temp_list = convert_string_to_list(file_text_read_string(file),",");file_text_readln(file);
ds_map_add(biome_data[|size],"Terrain_Grid",ds_grid_create(10,10));
for(r2=0;r2<10;r2++){
ds_grid_set(ds_map_find_value(ds_list_find_value(biome_data,size),"Terrain_Grid"),r2,r1,real(temp_list[|r2]));
}
ds_list_destroy(temp_list);
}

}

file_log_write("Finished reading biome file.| File: "+string(string_replace(string_replace(file_name," = 0","")," = 1",""))+" |Time spent: "+string((get_timer()-time_track)/1000)+"ms");

}

}
else{file_log_write("Missing biome file! Was located via 'mod_blacklist.txt'| File name: "+string(string_replace(string_replace(file_name," = 0","")," = 1","")));}

file_text_close(file);
}

return biome_data
