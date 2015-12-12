/// db_crafting_find_matches(item_name)
gml_pragma("forceinline");
var grid = global.crafting_data;var i = 0;var r = 0;var index = 0;
var result_grid = ds_grid_create(1,2);
var num = db_crafting_get_name(argument0);

for(r=1;r<9;r+=2)
{
i = grid[#num,r];if(string(i)!="0"){result_grid[#index,0]=i;ds_grid_resize(result_grid,ds_grid_width(result_grid)+1,2);}
i = grid[#num,r+1];if(string(i)!="0"){result_grid[#index,1]=i;}else{break;}
index++;
}
//show_message(string(result_grid[#0,0]));
ds_grid_resize(result_grid,ds_grid_width(result_grid)-1,2);
return result_grid;

ds_grid_destroy(result_grid);
