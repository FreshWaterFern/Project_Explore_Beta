/// world_generate_chunk_stay(x,y)

//objind(object_id) inst = instance_create(x,y,objind(object_id), verify correct id is returned

gml_pragma("forceinline");

var chunk_x = argument0;
var chunk_y = argument1;
var pre_calc1 = 0;var pre_calc2 = 0;
var pre_calc3 = 0;var pre_calc4 = 0;
var total = 0;
var size = 0;
var object_list = ds_list_create();
var inst = 0;
var i = 0;var t = 0;var r1 = 0;var r2 = 0;var s1 = 0;var s2 = 0;var str = "";
var list_size = ds_list_size(biome_data);
var temp_list = 0;
var item_id = 0;
var chance = 0;
var inst_count = 0;

var biome_id = 0;var biome_set = -1;

if ( chunk_x != 0 && chunk_y != 0 && chunk_x != (room_width/1280)-1 && chunk_y != (room_height/1280)-1 ){ // No need to generate biomes where the ocean is

// Test each biome for a chance to spawn, from top to bottom
while(biome_set == -1 ){

for(i=0;i<list_size;i++){
chance = ds_map_find_value(ds_list_find_value(biome_data,i),"Chance");
if ( irandom(99)+1 <= chance ){
biome_set = i;
}}

}

/*
    Now that we have a biome selected we can go ahead and start generating the chunk
    with all of the information we have related to this particular biome.
*/

// Pre-calculate some math
pre_calc1 = chunk_x*1280;
pre_calc2 = chunk_y*1280;
pre_calc3 = (chunk_x*1280)+1280;
pre_calc4 = (chunk_y*1280)+1280;

// Place trees
total = ds_map_find_value(ds_list_find_value(biome_data,biome_set),"Tree_Max");
chance = ds_map_find_value(ds_list_find_value(biome_data,biome_set),"Tree_Chance");
for(i=0;i<total;i++){
if ( irandom(99)+1 <= chance ){
inst = instance_create(floor(random_range(pre_calc1,pre_calc3)),floor(random_range(pre_calc2,pre_calc4)),objind(obj_world_tree_1));
world_obj_add_queue(inst);
}}

// Create a list of all fruit bushes that can be used
ds_list_add(object_list,obj_env_bush1);

size = ds_list_size(object_list)-1;

// Place fruit bushes
total = ds_map_find_value(ds_list_find_value(biome_data,biome_set),"FruitBush_Max");
chance = ds_map_find_value(ds_list_find_value(biome_data,biome_set),"FruitBush_Chance");
for(i=0;i<total;i++){
if ( irandom(99)+1 <= chance ){
inst = instance_create(floor(random_range(pre_calc1,pre_calc3)),floor(random_range(pre_calc2,pre_calc4)),objind(object_list[|irandom(size)]));
world_obj_add_queue(inst);
}}

ds_list_clear(object_list);

// Create a list of all leaf bushes that can be used
ds_list_add(object_list,obj_env_plant1);
ds_list_add(object_list,obj_env_plant2);
ds_list_add(object_list,obj_env_plant3);

size = ds_list_size(object_list)-1;

// Place leaf bushes
total = ds_map_find_value(ds_list_find_value(biome_data,biome_set),"LeafBush_Max");
chance = ds_map_find_value(ds_list_find_value(biome_data,biome_set),"LeafBush_Chance");
for(i=0;i<total;i++){
if ( irandom(99)+1 <= chance ){
inst = instance_create(floor(random_range(pre_calc1,pre_calc3)),floor(random_range(pre_calc2,pre_calc4)),objind(object_list[|irandom(size)]));
world_obj_add_queue(inst);
}}

// Place Wolves
total = ds_map_find_value(ds_list_find_value(biome_data,biome_set),"Wolf_Max");
chance = ds_map_find_value(ds_list_find_value(biome_data,biome_set),"Wolf_Chance");
for(i=0;i<total;i++){
if ( irandom(99)+1 <= chance ){
inst = instance_create(floor(random_range(pre_calc1,pre_calc3)),floor(random_range(pre_calc2,pre_calc4)),objind(obj_npc_wolf));
world_obj_add_queue(inst);
}}

// Place Bears
total = ds_map_find_value(ds_list_find_value(biome_data,biome_set),"Bear_Max");
chance = ds_map_find_value(ds_list_find_value(biome_data,biome_set),"Bear_Chance");
for(i=0;i<total;i++){
if ( irandom(99)+1 <= chance ){
inst = instance_create(floor(random_range(pre_calc1,pre_calc3)),floor(random_range(pre_calc2,pre_calc4)),objind(obj_npc_bear));
world_obj_add_queue(inst);
}}

// Place Deers
total = ds_map_find_value(ds_list_find_value(biome_data,biome_set),"Deer_Max");
chance = ds_map_find_value(ds_list_find_value(biome_data,biome_set),"Deer_Chance");
for(i=0;i<total;i++){
if ( irandom(99)+1 <= chance ){
inst = instance_create(floor(random_range(pre_calc1,pre_calc3)),floor(random_range(pre_calc2,pre_calc4)),objind(obj_npc_buck));
world_obj_add_queue(inst);

}}

// Place custom objects
size = ds_list_size(ds_map_find_value(biome_data[|biome_set],"Objects"));
for(t=0;t<size;t++){
temp_list = convert_string_to_list(ds_list_find_value(ds_map_find_value(biome_data[|biome_set],"Objects"),t),",");

total = real(temp_list[|6]);
chance = real(temp_list[|7]);

item_id = db_item_get_name(temp_list[|0]);

for(i=0;i<total;i++){
if ( irandom(99)+1 <= chance ){
switch(real(temp_list[|1])){

case 4:{
inst = object_create_plant(pre_calc1+640+floor(random_range(real(temp_list[|2])-640,real(temp_list[|4])-640)),pre_calc2+640+floor(random_range(real(temp_list[|3])-640,real(temp_list[|5])-640)),item_id);
break;}

}}}

ds_list_destroy(temp_list);
}

ds_list_clear(object_list);

// Generate the terrain 
var tile_id = 0;
s1 = 0;s2 = 0;
for(r1=chunk_y*10;r1<(chunk_y*10)+10;r1++){
s1 = 0;
for(r2=chunk_x*10;r2<(chunk_x*10)+10;r2++){
tile_id = ds_grid_get(ds_map_find_value(ds_list_find_value(biome_data,biome_set),"Terrain_Grid"),s1,s2);

// Tile ID processing [START]
switch(tile_id){

case 100:{
global.world_tiles[#r2,r1]=17;
inst = instance_create((r2*128)+128,(r1*128)+128,obj_world_water2);world_obj_add_queue(inst);
break;}

default:{
global.world_tiles[#r2,r1]=tile_id;
break;}

}
// Tile ID processing [END]

s1++;
}
s2++;
}

}

ds_list_destroy(object_list);
