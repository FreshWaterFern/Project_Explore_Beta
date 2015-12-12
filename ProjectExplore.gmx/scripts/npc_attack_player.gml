/// npc_attack_player(ObjectIndex,damage)
var npc_id = argument0;
var str = 0;
if ( global.equip_list[|0] != 0 ){
var list1 = convert_string_to_list(global.item_data[#global.equip_list[|0],6],",");}else{var list1 = ds_list_create();ds_list_add(list1,0,0);}
if ( global.equip_list[|1] != 0 ){
var list2 = convert_string_to_list(global.item_data[#global.equip_list[|1],6],",");}else{var list2 = ds_list_create();ds_list_add(list2,0,0);}
var armor = real(list1[|0])+real(list2[|0]);
var kb = real(list1[|1])+real(list2[|1]);;
if ( armor > 0 ){
str = argument1-(argument1*armor);}else{
str = argument1;}
obj_game.c_health -= str;
var inst = instance_create(obj_player.x,obj_player.y,obj_popup_resourcegain);
inst.text = "-"+string(str)+" Health";
inst.v_color = c_red;
var kb_spd = 0;
var kb_cd = 0;
var kb_time = 0;

switch(npc_id.object_index)
{
case obj_npc_wolf:{kb_spd = 4;kb_cd=25;kb_time=15;npc_id.npc_fear -= 5;break;}
case obj_npc_bear:{kb_spd = 4;kb_cd=25;kb_time=15;npc_id.npc_fear -= 5;break;}
case obj_npc_buck:{kb_spd = 4;kb_cd=25;kb_time=15;break;}
case obj_ai_nomadripper:{kb_spd = 4;kb_cd=25;kb_time=15;break;}
case obj_ai_nomadstalker:{kb_spd = 4;kb_cd=25;kb_time=15;break;}
}

instance_create(x,y,obj_fx_damage);
obj_player.pl_knockback_dir = point_direction(npc_id.x,npc_id.y,obj_player.x,obj_player.y);
obj_player.image_angle = obj_player.pl_knockback_dir-90;
obj_player.direction = image_angle;
obj_player.pl_knockback_speed = floor(kb_spd-(kb_spd*kb));
obj_player.pl_knockback_cd = floor(kb_cd-(kb_cd*kb));
obj_player.pl_knockback_time = floor(kb_time-(kb_time*kb));
