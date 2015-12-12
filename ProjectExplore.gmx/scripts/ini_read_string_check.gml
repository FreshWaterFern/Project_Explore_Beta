/// ini_read_string_check(section,key,default)

/*
    Returns value of key if the key exists.
    Otherwise it will write the key to the file and
    return the default value.
*/

if ( ini_section_exists(argument0) ){
if ( ini_key_exists(argument0,argument1) ){
return ini_read_string(argument0,argument1,argument2);
}
else{
ini_write_string(argument0,argument1,argument2);
return argument2;
}
}
else{
ini_write_string(argument0,argument1,argument2);
return argument2;
}
