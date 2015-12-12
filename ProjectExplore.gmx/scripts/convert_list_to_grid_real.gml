/// convert_list_to_grid_real(ds_list,grid_width,grid_height)
gml_pragma("forceinline");
var list = argument0;
var grid = ds_grid_create(argument1,argument2);
var i = 0;var r = 0;var t = ds_list_size(list)-1;
width = argument1;height = argument2;
for(i=width-1;i>-1;i--){
for(r=height-1;r>-1;r--){
    grid[#i,r]=real(list[|t]);t--;
}}

return grid;

ds_grid_destroy(grid);
