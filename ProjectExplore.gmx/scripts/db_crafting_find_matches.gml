/// db_crafting_find_matches(item_name)
gml_pragma("forceinline");
var grid = global.crafting_data;var i = 1;var r = 1;var str1 = "";
var result_list = ds_list_create();
var grid_width = ds_grid_width(grid);

// Step through our entire item database and find matching results
for(i=1;i<grid_width;i++)
{
str1 = grid[#i,0]; // Get item name

// Compare user input to the item name, if it matches include it in the return list
if ( (string_pos(string_lower(string(argument0)),string_lower(str1)) != 0) ){ds_list_add(result_list,str1);}
}

return result_list;

ds_list_destroy(result_list);
