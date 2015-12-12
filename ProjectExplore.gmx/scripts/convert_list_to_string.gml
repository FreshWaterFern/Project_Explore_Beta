/// convert_list_to_string(list,char)
/*
Parses through a list and creates a string out of each
index before and after the 'char'.
*/
gml_pragma("forceinline");

var list = argument0;var list_size = ds_list_size(list);
var str1 = "";var str2 = "";var i = 0;
str1 = string(list[|i]);
if ( list_size > 1 ){
for(i=1;i<list_size;i++){
str1 = str1+argument1+string(list[|i]);}}
return str1;

ds_list_destroy(list);
