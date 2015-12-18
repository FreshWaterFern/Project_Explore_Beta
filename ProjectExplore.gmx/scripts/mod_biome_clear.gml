/// mod_biome_clear(biome_data)

// Clear temporarily used memory
biome_data = argument0;
var list_size = ds_list_size(biome_data);

for(i=0;i<list_size;i++){
ds_grid_destroy(ds_map_find_value(ds_list_find_value(biome_data,i),"Terrain_Grid"));
}

for(i=0;i<list_size;i++){
ds_map_destroy(biome_data[|i]);
}

ds_list_destroy(biome_data);
