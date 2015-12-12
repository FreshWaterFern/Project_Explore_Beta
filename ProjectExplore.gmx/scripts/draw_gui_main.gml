/// draw_gui_main()
var offset_tab = 0;
var offset_x = 0;var offset_y = 0;
var spr = 0;
var view_xcenter = ui_width/2;
var view_ybottom = ui_height;
var health_length = min(obj_game.c_health/100,1)*83;
var food_length = min(obj_game.c_food/100,1)*83;
var sanity_length = min(obj_game.c_sanity/100,1)*81;
draw_set_color(c_white);draw_set_font(font_gulim_8);draw_set_halign(fa_left);draw_set_valign(fa_middle);draw_set_alpha(obj_game.hotbar_alpha);
if ( obj_game.v_hotbar_set == 0 ){draw_sprite_ext(spr_inventory_slot,1,view_xcenter-72-(offset_x*3),view_ybottom-25-offset_y,1+global.tablet_scaling,1+global.tablet_scaling,0,c_white,obj_game.hotbar_alpha);}else{draw_sprite_ext(spr_inventory_slot,0,view_xcenter-72-(offset_x*3),view_ybottom-25-offset_y,1+global.tablet_scaling,1+global.tablet_scaling,0,c_white,obj_game.hotbar_alpha);}
if ( obj_game.v_hotbar_set == 1 ){draw_sprite_ext(spr_inventory_slot,1,view_xcenter-24-offset_x,view_ybottom-25-offset_y,1+global.tablet_scaling,1+global.tablet_scaling,0,c_white,obj_game.hotbar_alpha);}else{draw_sprite_ext(spr_inventory_slot,0,view_xcenter-24-offset_x,view_ybottom-25-offset_y,1+global.tablet_scaling,1+global.tablet_scaling,0,c_white,obj_game.hotbar_alpha);}
if ( obj_game.v_hotbar_set == 2 ){draw_sprite_ext(spr_inventory_slot,1,view_xcenter+24+offset_x,view_ybottom-25-offset_y,1+global.tablet_scaling,1+global.tablet_scaling,0,c_white,obj_game.hotbar_alpha);}else{draw_sprite_ext(spr_inventory_slot,0,view_xcenter+24+offset_x,view_ybottom-25-offset_y,1+global.tablet_scaling,1+global.tablet_scaling,0,c_white,obj_game.hotbar_alpha);}
if ( obj_game.v_hotbar_set == 3 ){draw_sprite_ext(spr_inventory_slot,1,view_xcenter+72+(offset_x*3),view_ybottom-25-offset_y,1+global.tablet_scaling,1+global.tablet_scaling,0,c_white,obj_game.hotbar_alpha);}else{draw_sprite_ext(spr_inventory_slot,0,view_xcenter+72+(offset_x*3),view_ybottom-25-offset_y,1+global.tablet_scaling,1+global.tablet_scaling,0,c_white,obj_game.hotbar_alpha);}
item_slot_1 = global.c_inventory_pack[#0,4];item_slot_2 = global.c_inventory_pack[#1,4];item_slot_3 = global.c_inventory_pack[#2,4];item_slot_4 = global.c_inventory_pack[#3,4];
item_stack_1 = global.c_stack_pack[#0,4];item_stack_2 = global.c_stack_pack[#1,4];item_stack_3 = global.c_stack_pack[#2,4];item_stack_4 = global.c_stack_pack[#3,4];
draw_set_alpha(1);

// Draw World Clock
if ( global.render_clock_1 == true )
{clock_alpha += 0.07;}else{clock_alpha -= 0.07;}
if ( clock_alpha < 0 ){clock_alpha = 0;}if ( clock_alpha > 1 ){clock_alpha = 1;}

// Get image_angle for arrow
draw_set_alpha(clock_alpha);
var arrow_angle = (global.world_time/-20)*360+90;
draw_sprite(spr_clock,0,ui_width-34,34);
draw_sprite_ext(spr_clock_arrow,0,ui_width-34,34,1,1,arrow_angle,c_white,clock_alpha);
draw_set_alpha(1);

// Draw Compass
if ( obj_player.v_item_equipped == 82 )
{
    compass_alpha += 0.07;
}
else
{
    compass_alpha -= 0.07;
}
if ( compass_alpha < 0 )
{
    compass_alpha = 0;
}
if ( compass_alpha > 1 )
{
    compass_alpha = 1;
}
// Get image_angle for arrow
draw_set_alpha(compass_alpha);
if ( global.waypoint_x == 0 && global.waypoint_y == 0 )
{compass_arrow_angle++;if(compass_arrow_angle>=360){arrow_angle=0;}}
else{compass_arrow_angle = point_direction(obj_player.x,obj_player.y,global.waypoint_x,global.waypoint_y);}
draw_sprite(spr_compass,0,ui_width-104,34);
draw_sprite_ext(spr_compass_arrow,0,ui_width-104,34,1,1,compass_arrow_angle,c_white,compass_alpha);
draw_set_alpha(1);

// Draw all the text at once
draw_sprite(spr_hud_base,0,ui_width-256,ui_height-81);draw_sprite(spr_hud_base,0,ui_width-128,ui_height-81);
draw_sprite(spr_hud_base,0,ui_width-256,ui_height-27);draw_sprite(spr_hud_base,0,ui_width-128,ui_height-27);
draw_sprite(spr_hud_health,0,ui_width-256+30,ui_height-81);draw_sprite(spr_hud_sanity,0,ui_width-128+30,ui_height-81);
draw_sprite(spr_hud_hunger,0,ui_width-256+30,ui_height-27);draw_sprite(spr_hud_thirst,0,ui_width-128+30,ui_height-27);
draw_set_font(font_gulim_22);draw_set_halign(fa_center);
draw_text(ui_width-256+90,ui_height-81,string(round(obj_game.c_health)));draw_text(ui_width-128+90,ui_height-81,string(round(obj_game.c_sanity)));
draw_text(ui_width-256+90,ui_height-27,string(round(obj_game.c_food)));draw_text(ui_width-128+90,ui_height-27,string(round(obj_game.c_thirst)));
draw_set_font(font_gulim_12);draw_set_halign(fa_center);draw_set_valign(fa_middle);
var temperature = obj_game.c_temperature;if ( global.render_temp == 1 ){temperature = (temperature-32)*0.5555555555555556;}

// Draw external sprites all at once
if(item_slot_1>0){if ( global.item_data[#item_slot_1,4] != 4 ){spr = global.item_data[#item_slot_1,2];}else{spr = ds_list_find_value(global.item_data[#item_slot_1,2],0);}
draw_external_sprite_ext(spr,0,view_xcenter-72-(offset_x*3),view_ybottom-25-offset_y,1+global.tablet_scaling,1+global.tablet_scaling,0,c_white,obj_game.hotbar_alpha);}
if(item_slot_2>0){if ( global.item_data[#item_slot_2,4] != 4 ){spr = global.item_data[#item_slot_2,2];}else{spr = ds_list_find_value(global.item_data[#item_slot_2,2],0);}
draw_external_sprite_ext(spr,0,view_xcenter-24-offset_x,view_ybottom-25-offset_y,1+global.tablet_scaling,1+global.tablet_scaling,0,c_white,obj_game.hotbar_alpha);}
if(item_slot_3>0){if ( global.item_data[#item_slot_3,4] != 4 ){spr = global.item_data[#item_slot_3,2];}else{spr = ds_list_find_value(global.item_data[#item_slot_3,2],0);}
draw_external_sprite_ext(spr,0,view_xcenter+24+offset_x,view_ybottom-25-offset_y,1+global.tablet_scaling,1+global.tablet_scaling,0,c_white,obj_game.hotbar_alpha);}
if(item_slot_4>0){if ( global.item_data[#item_slot_4,4] != 4 ){spr = global.item_data[#item_slot_4,2];}else{spr = ds_list_find_value(global.item_data[#item_slot_4,2],0);}
draw_external_sprite_ext(spr,0,view_xcenter+72+(offset_x*3),view_ybottom-25-offset_y,1+global.tablet_scaling,1+global.tablet_scaling,0,c_white,obj_game.hotbar_alpha);}

if ( clock_alpha == 0 )
{draw_text_outline(string(round(temperature)),ui_width-40,16,c_white,c_black);draw_sprite(spr_degree_sign,global.render_temp,ui_width-40+string_width(string(round(temperature))),16);}
else
{draw_text_outline(string(round(temperature)),ui_width-40,76,c_white,c_black);draw_sprite(spr_degree_sign,global.render_temp,ui_width-40+string_width(string(round(temperature))),76);}
draw_set_color(c_white); draw_set_font(font_gulim_8);draw_set_halign(fa_left);draw_set_valign(fa_middle);draw_set_alpha(obj_game.hotbar_alpha);
if(item_stack_1 > 1){draw_text_outline(string(item_stack_1),view_xcenter-86-(offset_x*3),view_ybottom-36-offset_y,c_white,c_black);}
if(item_stack_2 > 1){draw_text_outline(string(item_stack_2),view_xcenter-38-offset_x,view_ybottom-36-offset_y,c_white,c_black);}
if(item_stack_3 > 1){draw_text_outline(string(item_stack_3),view_xcenter+10+offset_x,view_ybottom-36-offset_y,c_white,c_black);}
if(item_stack_4 > 1){draw_text_outline(string(item_stack_4),view_xcenter+58+(offset_x*3),view_ybottom-36-offset_y,c_white,c_black);}

// Draw Passives
var offset_y = 0;
if ( global.pl_bleeding > 0 ){
draw_sprite(spr_passive_bleeding,0,ui_width-18,ui_height-72-offset_y+offset_tab-96);
draw_set_font(font_gulim_8);draw_set_halign(fa_right);draw_set_valign(fa_middle);draw_set_color(c_white);
var str_passive1 = "Health Loss: 0.01%";
draw_text_outline(str_passive1,ui_width-4,ui_height-40-offset_y+offset_tab-96,c_white,c_black);
draw_set_color(c_white);draw_set_alpha(1);
offset_y = 64;}

if ( obj_player.pl_nearlight == true ){
draw_sprite(spr_passive_light,0,ui_width-18,ui_height-72-offset_y+offset_tab-96);
draw_set_font(font_gulim_8);draw_set_halign(fa_right);draw_set_valign(fa_middle);draw_set_color(c_white);
var str_passive1 = "Insanity Reduction: "+string_delete(string(1-obj_game.v_lightlevel),1,2)+"%";
draw_text_outline(str_passive1,ui_width-4,ui_height-40-offset_y+offset_tab-96,c_white,c_black);
draw_set_color(c_white);draw_set_alpha(1);
offset_y = 128;}

if ( global.pl_sickness > 0 ){
draw_sprite(spr_passive_sickness,0,ui_width-18,ui_height-72-offset_y+offset_tab-96);
draw_set_font(font_gulim_8);draw_set_halign(fa_right);draw_set_valign(fa_middle);draw_set_color(c_white);
var str_passive1 = "Body Temperature: +10";
draw_text_outline(str_passive1,ui_width-4,ui_height-40-offset_y+offset_tab-96,c_white,c_black);
draw_set_color(c_white);draw_set_alpha(1);
offset_y = 192;}

