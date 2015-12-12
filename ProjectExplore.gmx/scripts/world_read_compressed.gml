/// world_read_compressed(file)
var i = 0;var r = 0;var tile_id = 0;var tile_count = 0;var rep_count = 0;
var buff = buffer_load(argument0);

ds_grid = ds_grid_create(buffer_read(buff,buffer_u16),buffer_read(buff,buffer_u16));
var width = ds_grid_width(ds_grid);
var height = ds_grid_height(ds_grid);

var tile_list = ds_list_create();

var current_tiles = 0;
var total_tiles = width * height;
var eof = false;
while (eof == false) {
    tile_id = buffer_read(buff, buffer_u8);
    tile_count = buffer_read(buff, buffer_u16);
    current_tiles += tile_count;
    for (i = 0; i < tile_count; i++) {
        ds_list_add(tile_list, tile_id);
    }
    if (current_tiles >= total_tiles) {
        eof = true;
    }
}

for (i = 0; i < width; i++) {
    for (r = 0; r < height; r++) {
        ds_grid[# i, r] = tile_list[| i * height + r];
    }
}

return ds_grid;
ds_grid_destroy(ds_grid);
buffer_delete(buff);
