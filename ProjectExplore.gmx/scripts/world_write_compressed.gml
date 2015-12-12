/// world_write_compressed(ds_grid_index,file)

var ds_grid = argument0;
var width = ds_grid_width(ds_grid);
var height = ds_grid_height(ds_grid);
var i = 0;var r = 0;var next_id = 0;var first_id = 0;var index_add = 0;
var buff2 = buffer_create(1,buffer_grow,1);

buffer_write(buff2,buffer_u16,width);
buffer_write(buff2,buffer_u16,height);

var tile_list = ds_list_create();
for(i=0;i<width;i++)
{
    for(r=0;r<height;r++)
    {
        ds_list_add(tile_list, ds_grid[# i, r]);
    }
}

var list_size = ds_list_size(tile_list);
for (i = 0; i < list_size; i++) {
    var consec_tiles = 1;
    first_id = tile_list[| i];
    next_id = tile_list[| i+1];
    while (first_id == next_id) {
        consec_tiles++; i++;
        next_id = tile_list[| i+1];
    }
    buffer_write(buff2,buffer_u8,first_id);
    buffer_write(buff2,buffer_u16,consec_tiles);
}

file_delete(string_replace(argument1,".sav",""));
return(buffer_save(buff2,string_replace(argument1,".sav","")));
buffer_delete(buff2);
