/// Menu_MainMenu_Mods()

if ( !surface_exists(surface_main) ){
surface_main = surface_create(view_wview[0],view_hview[0]);
surface_update = true;}

if ( surface_update ){

surface_set_target(surface_main);

draw_clear_alpha(0,0);

draw_sprite_ext(spr_menu_settings,0,640,360*button_slide,1.25,1,0,c_white,1);
draw_sprite(spr_menu_dragbar,0,640+200,360);
draw_set_color(make_colour_rgb(82,51,27));draw_set_alpha(0.75);
draw_line_width(470,0,470,60*button_slide,5);
draw_line_width(810,0,810,60*button_slide,5);
draw_set_color(c_black);draw_set_alpha(0.25);
draw_circle(470,60*button_slide,12,false);
draw_circle(810,60*button_slide,12,false);
draw_set_color(make_colour_rgb(90,90,90));draw_set_alpha(1);
draw_circle(470,60*button_slide,8,false);
draw_circle(810,60*button_slide,8,false);
draw_set_color(make_colour_rgb(130,130,130));draw_set_alpha(1);
draw_circle(470,60*button_slide,2,false);
draw_circle(810,60*button_slide,2,false);
draw_set_color(c_white);draw_set_alpha(1);

surface_reset_target();
surface_update = false;

}

draw_surface(surface_main,0,0);

var offset = -112;

var str = "";


// Special Math
if ( button_slide < 1 ){
surface_update=true;
button_slide += 0.175
if ( button_slide > 0.25 ){
button_slide -= 0.025;}
if ( button_slide > 0.5 ){
button_slide -= 0.05;}
if ( button_slide > 0.75 ){
button_slide -= 0.05;}
}

// SPECIAL SLIDER CODE [START]
draw_set_color(c_white);
var i = 0;var r = 0;
var size = ds_list_size(global.mod_BL_list);

if ( !instance_exists(obj_loadgame_button) ){
var inst = 0;
for(i=0;i<size;i++){
inst = instance_create(640,360-230+(i*80),obj_loadgame_button);
inst.file_name = global.mod_BL_list[|i];
}
}

// Menu Slider
slider_pos[0] = 640+200;
if ( mouse_check_area(slider_pos[0]-11,slider_pos[1]-14,slider_pos[0]+11,slider_pos[1]+14) ){
if ( mouse_check_button_pressed(mb_left) ){
slider_set[0] = 1;
}
}
else
{
if ( mouse_check_button_pressed(mb_left) ){
slider_set[0] = 0;
}
}

if ( mouse_check_button_released(mb_left) ){
slider_set[0] = 0;}

if ( slider_set[0] ){
slider_pos[1] = clamp(mouse_y-view_yview[0],360-230,360+230);}

var list_index_start = slider_pos[1];
if ( size > 6 ){
list_index_start = (slider_pos[1]-130)/(-130+360+230);
}else{
list_index_start = 0;
}

draw_set_color(c_black);draw_set_alpha(0.35);
draw_rectangle(500,50,1280-500,80,false);

draw_set_font(font_gulim_12);draw_set_color(c_white);draw_set_alpha(1);draw_set_halign(fa_center);draw_set_valign(fa_middle);

draw_text_outline("Left MB = Toggle On/Off",640,65,c_white,c_black);

draw_set_font(font_gulim_18);
draw_set_color(make_color_rgb(200,200,200));
with(obj_loadgame_button){
var math_y = y-round(list_index_start*(clamp(size-6,1,999)))*80;

var enabled = string_pos(" = 1",file_name);if ( enabled != 0 ){enabled = 1;}

if ( math_y > 360-230-20 && math_y < 360+230+20 ){

draw_sprite_ext(spr_menu_checkbox,enabled,790,math_y,1,1,0,c_white,1); // Checkbox will show whether or not a mod is enabled

var scale1 = 1;var str = file_name;str = string_replace(str," = 0","");str = string_replace(str," = 1","");
while((string_width(str)*scale1)>330){scale1-=0.025;}

draw_text_transformed(570,math_y,str,scale1,scale1,0); // File name
if ( mouse_check_area(570-((string_width(str)*scale1)/2),math_y-30,570+((string_width(str)*scale1)/2),math_y+30) ){

draw_set_color(c_green);draw_set_alpha(0.75);
draw_text_transformed(570,math_y,str,scale1,scale1,0); // File name
draw_set_color(make_color_rgb(200,200,200));draw_set_alpha(1);

if ( mouse_check_button_pressed(mb_left) ){
var index = ds_list_find_index(other.mod_cache_list,file_name)
if ( enabled ){
file_name = string_replace(file_name," = 1"," = 0");}
else{
file_name = string_replace(file_name," = 0"," = 1");}
other.mod_cache_list[|index] = file_name;
}
}}
}

draw_set_color(c_white);

draw_sprite(spr_menu_dragbox,0,slider_pos[0],slider_pos[1]);

// SPECIAL SLIDER CODE [END]

offset = -80;

// Back
scr_button_handle(0,640,(690+offset)*button_slide,140,36,font_gulim_22,fa_center,fa_middle,"Back");

if ( mouse_check_button_released(mb_left) ){
if ( mouse_over == button_select ){
switch(button_select){
case 0:{var difference_detect = false;
for(i=0;i<size;i++){
if ( mod_cache_list[|i] != global.mod_BL_list[|i] ){
difference_detect = true;i=size}
}
if ( difference_detect ){
menu_state="Confirm Mods";surface_update=true;button_slide=0;with(obj_loadgame_button){instance_destroy();}
}else{
menu_state="Main";surface_update=true;button_slide=0;with(obj_loadgame_button){instance_destroy();}}
break;}
}}}

if ( mouse_check_button_pressed(mb_left) ){
if ( mouse_over != -1 ){button_select = mouse_over;}else{button_select = -2;}}

mouse_over = -1;
