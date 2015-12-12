/// db_item_use(index)
gml_pragma("forceinline");
var grid = global.item_data;var check_destroy = false;

if ( argument0 != 0 ){
var item_type = global.item_data[#argument0,4];
if ( item_type == 0 or item_type == 4 ){ // Type (0 = Consumable, 4 = Plantable)
var list = convert_string_to_list(grid[#argument0,5],",");
var str = "";var offset = 0;

var hp = real(list[|0]);
var food = real(list[|1]);
var thirst = real(list[|2]);
var sanity = real(list[|3]);

if ( hp > 0 or food > 0 or thirst > 0 or sanity > 0 ){
obj_game.c_health+=hp;
obj_game.c_food+=food;
obj_game.c_thirst+=thirst;
obj_game.c_sanity+=sanity;
if ( hp != 0 ){
if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);}
if ( hp > 0 ){str = "+"}if ( hp < 0 ){str = ""}if ( hp != 0 ){offset += 20}
inst.text=str+string(hp)+" HP";inst.v_color=c_green;}

if ( food != 0 ){
if(instance_exists(obj_inv_slot)){inst=instance_create(x,y-offset,obj_popup_text)}else{inst=instance_create(x,y-offset,obj_popup_resourcegain);}
if ( food > 0 ){str = "+"}if ( food < 0 ){str = ""}if ( food != 0 ){offset += 20}
inst.text=str+string(food)+" Food";inst.v_color=obj_game_render.col_orange;}

if ( thirst != 0 ){
if(instance_exists(obj_inv_slot)){inst=instance_create(x,y-offset,obj_popup_text)}else{inst=instance_create(x,y-offset,obj_popup_resourcegain);}
if ( thirst > 0 ){str = "+"}if ( thirst < 0 ){str = ""}if ( thirst != 0 ){offset += 20}
inst.text=str+string(thirst)+" Thirst";inst.v_color=c_teal;}

if ( sanity != 0 ){
if(instance_exists(obj_inv_slot)){inst=instance_create(x,y-offset,obj_popup_text)}else{inst=instance_create(x,y-offset,obj_popup_resourcegain);}
if ( sanity > 0 ){str = "+"}if ( sanity < 0 ){str = ""}if ( sanity != 0 ){offset += 20}
inst.text=str+string(sanity)+" Sanity";inst.v_color=c_blue;}

if ( instance_exists(obj_inv_slot) == true ){
if ( inv_part == 0 ){
global.c_stack_pack[#grid_x,grid_y] = global.c_stack_pack[#grid_x,grid_y]-1;
if ( global.c_stack_pack[#grid_x,grid_y] == 0 )
{global.c_inventory_pack[#grid_x,grid_y] = 0;}}
if ( inv_part == 3 ){
storage_id.c_stack[#grid_x,grid_y] = storage_id.c_stack[#grid_x,grid_y]-1;
if ( storage_id.c_stack[#grid_x,grid_y] == 0 )
{storage_id.c_inv[#grid_x,grid_y] = 0;}}
with(obj_inv_slot){event_user(0)}
}
else
{
global.c_stack_pack[#obj_game.v_hotbar_set,4] = global.c_stack_pack[#obj_game.v_hotbar_set,4]-1;
if ( global.c_stack_pack[#obj_game.v_hotbar_set,4] == 0 )
{global.c_inventory_pack[#obj_game.v_hotbar_set,4] = 0;}
}}}

if ( item_type == 3 ){ // Type (3 = Wearable)
var list1 = convert_string_to_list(global.item_data[#argument0,8],",");
if ( real(list1[|0]) == 1 ){ // It's head wear
if(global.equip_list[| 0]!=argument0){
global.clothing_head=global.item_data[#argument0,0];global.equip_list[| 0]=argument0;
if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}
else{inst=instance_create(x,y,obj_popup_resourcegain);}inst.text="Equipped";inst.v_color=c_white;}
else{global.clothing_head="";global.equip_list[| 0]=0;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="Unequipped";inst.v_color=c_white;}}
if ( real(list1[|1]) == 1 ){ // It's body wear
if(global.equip_list[| 1]!=argument0){
global.clothing_body=global.item_data[#argument0,0];global.equip_list[| 1]=argument0;
if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}
else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="Equipped";inst.v_color=c_white;}
else{global.clothing_body="";global.equip_list[| 1]=0;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="Unequipped";inst.v_color=c_white;}}
ds_list_destroy(list1);
}

if ( item_type == 5 ){ // Type (5 = Compass)
if ( obj_player.compass_equip ){obj_player.compass_equip = false;
if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}
else{inst=instance_create(x,y,obj_popup_resourcegain);}inst.text="Unequipped";inst.v_color=c_white;
}
else{obj_player.compass_equip = true;
if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}
else{inst=instance_create(x,y,obj_popup_resourcegain);}inst.text="Equipped";inst.v_color=c_white;
}

}


}
