/// mod_crafting_ini()
gml_pragma("forceinline");
var str1 = "";var str2 = "";var str3 = "";var index = ds_grid_width(global.crafting_data);

if(!file_text_eof(file))
{
ds_grid_resize(global.crafting_data,ds_grid_width(global.crafting_data)+1,9);
// -- Get Item Name -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"name: ","");
global.crafting_data[#index,0]=string(str1);
ds_map_add(global.crafting_map,string_lower(str1),index);
// -- Get Requirement 1 -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"req1: ","");
global.crafting_data[#index,1]=string(str1);
// -- Get Amount 1 -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"count1: ","");
global.crafting_data[#index,2]=real(str1);
// -- Get Requirement 2 -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"req2: ","");
global.crafting_data[#index,3]=string(str1);
// -- Get Amount 2 -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"count2: ","");
global.crafting_data[#index,4]=real(str1);
// -- Get Requirement 3 -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"req3: ","");
global.crafting_data[#index,5]=string(str1);
// -- Get Amount 3 -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"count3: ","");
global.crafting_data[#index,6]=real(str1);
// -- Get Requirement 4 -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"req4: ","");
global.crafting_data[#index,7]=string(str1);
// -- Get Amount 4 -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"count4: ","");
global.crafting_data[#index,8]=real(str1);

/*Skip Ahead Into The Next Item*/
file_step++;
}
else
{item_load = true;file_step--;load_step=2;}
