/// convert_grid_to_list_string(ds_grid)
gml_pragma("forceinline");
var grid = argument0;
var list_cache = ds_list_create();
var i = 0;var r = 0;
width = ds_grid_width(grid);height = ds_grid_height(grid);
for(i=0;i<width;i++){
for(r=0;r<height;r++){
    ds_list_add(list_cache,string(grid[#i,r]));
}}

return list_cache;

ds_list_destroy(list_cache);
