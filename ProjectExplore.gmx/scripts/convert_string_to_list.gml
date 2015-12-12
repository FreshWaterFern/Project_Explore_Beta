/// convert_string_to_list(string,char)
/*
Parses through a string and creates a list out of each
section of characters before and after the 'char'.
Example: 1,5,10 will return a list of each number if char == ","
*/
gml_pragma("forceinline");

var str_temp = string(argument0);
var list = ds_list_create();
var str1 = "";var str2 = "";var i = 1;
for(i=1;i<=string_length(str_temp);i++){
str1 = string_char_at(str_temp,i);
str2 = str2 + str1;
if ( str1 == argument1 ){ds_list_add(list,string(string_copy(str_temp,i-real(string_length(str2))+1,real(string_length(str2))-1)));str2="";}
if ( i == string_length(str_temp) ){ds_list_add(list,string(string_copy(str_temp,i-real(string_length(str2))+1,real(string_length(str2)))));str2="";}}
return list;

ds_list_destroy(list);
