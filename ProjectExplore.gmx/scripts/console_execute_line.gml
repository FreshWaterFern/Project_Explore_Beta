/// console_execute_line(string)
var command_str = argument0;
var str_pos1 = string_pos(" ",argument0);
command_str = string_delete(argument0,str_pos1,string_length(argument0));
var input_str = string_delete(argument0,1,str_pos1);
switch(command_str)
{
    case "give_item":{
    if ( db_item_get_name(string(input_str)) != undefined ){
    inventory_add(db_item_get_name(string(input_str)),64,false);
    console_add("64 '"+global.item_data[#db_item_get_name(string(input_str)),0]+"' given.");
    if(instance_exists(obj_inv_slot)==true){with(obj_inv_slot){event_user(0)}}}
    else{console_add("Could not find a matching item by that name");}
    break;}
    
    case "tree_mode":{
    if(obj_game.debug_set=="tree_mode"){
    console_add("Tree Mode disabled!");obj_game.debug_set="";}else{
    console_add("Tree Mode enabled! Right click to place trees.");obj_game.debug_set="tree_mode";}
    break;}
    
    case "rock_mode":{
    if(obj_game.debug_set=="rock_mode"){
    console_add("Rock Mode disabled!");obj_game.debug_set="";}else{
    console_add("Rock Mode enabled! Right click to place rock.");obj_game.debug_set="rock_mode";}
    break;}
    
    case "metal_mode":{
    if(obj_game.debug_set=="metal_mode"){
    console_add("Metal Mode disabled!");obj_game.debug_set="";}else{
    console_add("Metal Mode enabled! Right click to place rock.");obj_game.debug_set="metal_mode";}
    break;}
    
    case "wolf_mode":{
    if(obj_game.debug_set=="wolf_mode"){
    console_add("Wolf Mode disabled!");obj_game.debug_set="";}else{
    console_add("Wolf Mode enabled! Right click to place a wolf.");obj_game.debug_set="wolf_mode";}
    break;}
    
    case "bear_mode":{
    if(obj_game.debug_set=="bear_mode"){
    console_add("Bear Mode disabled!");obj_game.debug_set="";}else{
    console_add("Bear Mode enabled! Right click to place a bear.");obj_game.debug_set="bear_mode";}
    break;}
    
    case "deer_mode":{
    if(obj_game.debug_set=="deer_mode"){
    console_add("Deer Mode disabled!");obj_game.debug_set="";}else{
    console_add("Deer Mode enabled! Right click to place a deer.");obj_game.debug_set="deer_mode";}
    break;}
    
    case "bush_mode":{
    if(obj_game.debug_set=="bush_mode"){
    console_add("Bush Mode disabled!");obj_game.debug_set="";}else{
    console_add("Bush Mode enabled! Right click to place a bear.");obj_game.debug_set="bush_mode";}
    break;}
    
    case "time_set_speed":{
    obj_game.time_speed = real(input_str);
    console_add("Set time update speed to "+string(input_str)+".");
    break;}
    
    case "kill_self":{
    obj_game.c_health = 0;
    console_add("Killed self.");
    break;}
    
    /*case "edit_port":
    {
    port = input_str;
    ini_open("server_info.ini");
    ini_write_string("server","port",string(input_str));
    ini_close();
    console_add("Server port changed to "+input_str);
    break;
    }
    case "save":
    {
    console_add("Saving server...");
    // Run Save Script
    console_add("Server save complete");
    break;
    }
    case "close":
    case "quit":
    case "exit":
    {
    console_add("Closing server...");
    game_end();
    break;
    }*/
    
    default:
    {
    console_add("No known commands by that name...");
    }
}
