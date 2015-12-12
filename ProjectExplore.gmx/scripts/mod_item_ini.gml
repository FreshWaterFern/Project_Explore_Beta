/// mod_item_ini()
gml_pragma("forceinline");
var str1 = "";var str2 = "";var str3 = "";var index = ds_grid_width(global.item_data);

if(!file_text_eof(file))
{
ds_grid_resize(global.item_data,ds_grid_width(global.item_data)+1,10);
// -- Get Item Name -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"name: ","");
global.item_data[#index,0]=string(str1);
ds_map_add(global.item_map,string_lower(str1),index);
// -- Get Item Description -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"desc: ","");
global.item_data[#index,1]=str1;
// -- Get Sprite -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = WD+string_replace(str1,"spr: ","");
global.item_data[#index,2]=str1;
// -- Get Item Stack Limit -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"stack: ","");
global.item_data[#index,3]=real(str1);
// -- Get Item Type -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"type: ","");
global.item_data[#index,4]=real(str1);
// -- Get Item Stat0 -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"stat1: ","");
global.item_data[#index,5]=string(str1);
// -- Get Item Stat1 -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"stat2: ","");
global.item_data[#index,6]=string(str1);
// -- Get Item Stat2 -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"stat3: ","");
global.item_data[#index,7]=string(str1);
// -- Get Item Stat3 -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"stat4: ","");
global.item_data[#index,8]=string(str1);
// -- Get Item Cook Time -- \\
str1 = file_text_read_string(file);file_text_readln(file);
str1 = string_replace(str1,"cook: ","");
global.item_data[#index,9]=string(str1);

/*Skip Ahead Into The Next Item*/
file_step++;
}
else
{item_load = true;file_step--;load_step=2;}
