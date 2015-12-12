/// convert_string_to_numbers(string)

/*
    This function will step through a string
    and create a number out of each character.
*/

var char = "";
var str1 = argument0;var num = 0;var i = 1;
if ( string_length(string_digits(str1)) != string_length(str1) ){
for(i=1;i<=string_length(str1);i++){
char = string_char_at(str1,i);
num += convert_char_to_unicode(char);}
show_debug_message("Not all characters are digits");
}else{
for(i=1;i<=string_length(str1);i++){
num += real(string_char_at(str1,i));}
show_debug_message("All characters are digits!");
}
show_debug_message(string(num));
return num;
