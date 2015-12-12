/// Menu_MainMenu_Controls()

if ( !surface_exists(surface_main) ){
surface_main = surface_create(view_wview[0],view_hview[0]);
surface_update = true;}

if ( surface_update ){

surface_set_target(surface_main);

draw_clear_alpha(0,0);

draw_sprite_ext(spr_menu_settings,0,640,380*button_slide,1,1.1,0,c_white,1);
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

var str = "";

draw_set_color(make_colour_rgb(180,180,180));draw_set_alpha(1);
draw_set_font(font_gulim_22);draw_set_halign(fa_center);draw_set_valign(fa_middle);
draw_text(640,(70)*button_slide,"Move Up");
draw_text(640,(150)*button_slide,"Move Down");
draw_text(640,(230)*button_slide,"Move Left");
draw_text(640,(310)*button_slide,"Move Right");
draw_text(640,(390)*button_slide,"Walk");
draw_text(640,(470)*button_slide,"Interact");
draw_text(640,(550)*button_slide,"Inventory");


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

// Special Code For Input
var i = 0;var r = 0;
for(i=0;i<7;i++){
for(r=0;r<2;r++){
if ( control_set[i,r] == 1 )
if ( keyboard_check_pressed(vk_anykey) ){
control_cache[i,r] = keyboard_set_key(control_cache[i,r],keyboard_key);
control_set[i,r] = 0;
}
}
}

var width = sprite_get_width(spr_menu_audio_bar);

// Custom Slider (Master Volume)
draw_set_color(make_colour_rgb(180,180,180));
draw_set_font(font_gulim_12);
draw_text(530,(120-25)*button_slide,"Key 1");
draw_text(750,(120-25)*button_slide,"Key 2");
draw_text(530,(200-25)*button_slide,"Key 1");
draw_text(750,(200-25)*button_slide,"Key 2");
draw_text(530,(280-25)*button_slide,"Key 1");
draw_text(750,(280-25)*button_slide,"Key 2");
draw_text(530,(360-25)*button_slide,"Key 1");
draw_text(750,(360-25)*button_slide,"Key 2");
draw_text(530,(440-25)*button_slide,"Key 1");
draw_text(750,(440-25)*button_slide,"Key 2");
draw_text(530,(600-25)*button_slide,"Key 1");
draw_text(750,(600-25)*button_slide,"Key 2");

draw_set_color(c_white);
draw_set_font(font_gulim_12);draw_set_halign(fa_center);draw_set_valign(fa_middle);

if ( mouse_check_area(530-64,(120-11)*button_slide,530+64,(120+11)*button_slide) ){
draw_set_alpha(0.5);Menu_MainMenu_ButtonSet(0,0);
}else{draw_set_alpha(0.1);}
draw_rectangle(530-76,(120-11)*button_slide,530+76,(120+11)*button_slide,false);

if ( mouse_check_area(750-64,(120-11)*button_slide,750+64,(120+11)*button_slide) ){
draw_set_alpha(0.5);Menu_MainMenu_ButtonSet(0,1);
}else{draw_set_alpha(0.1);}
draw_rectangle(750-76,(120-11)*button_slide,750+76,(120+11)*button_slide,false);

if ( mouse_check_area(530-64,(200-11)*button_slide,530+64,(200+11)*button_slide) ){
draw_set_alpha(0.5);Menu_MainMenu_ButtonSet(1,0);
}else{draw_set_alpha(0.1);}
draw_rectangle(530-76,(200-11)*button_slide,530+76,(200+11)*button_slide,false);

if ( mouse_check_area(750-64,(200-11)*button_slide,750+64,(200+11)*button_slide) ){
draw_set_alpha(0.5);Menu_MainMenu_ButtonSet(1,1);
}else{draw_set_alpha(0.1);}
draw_rectangle(750-76,(200-11)*button_slide,750+76,(200+11)*button_slide,false);

if ( mouse_check_area(530-64,(280-11)*button_slide,530+64,(280+11)*button_slide) ){
draw_set_alpha(0.5);Menu_MainMenu_ButtonSet(2,0);
}else{draw_set_alpha(0.1);}
draw_rectangle(530-76,(280-11)*button_slide,530+76,(280+11)*button_slide,false);

if ( mouse_check_area(750-64,(280-11)*button_slide,750+64,(280+11)*button_slide) ){
draw_set_alpha(0.5);Menu_MainMenu_ButtonSet(2,1);
}else{draw_set_alpha(0.1);}
draw_rectangle(750-76,(280-11)*button_slide,750+76,(280+11)*button_slide,false);

if ( mouse_check_area(530-64,(360-11)*button_slide,530+64,(360+11)*button_slide) ){
draw_set_alpha(0.5);Menu_MainMenu_ButtonSet(3,0);
}else{draw_set_alpha(0.1);}
draw_rectangle(530-76,(360-11)*button_slide,530+76,(360+11)*button_slide,false);

if ( mouse_check_area(750-64,(360-11)*button_slide,750+64,(360+11)*button_slide) ){
draw_set_alpha(0.5);Menu_MainMenu_ButtonSet(3,1);
}else{draw_set_alpha(0.1);}
draw_rectangle(750-76,(360-11)*button_slide,750+76,(360+11)*button_slide,false);

if ( mouse_check_area(530-64,(440-11)*button_slide,530+64,(440+11)*button_slide) ){
draw_set_alpha(0.5);Menu_MainMenu_ButtonSet(4,0);
}else{draw_set_alpha(0.1);}
draw_rectangle(530-76,(440-11)*button_slide,530+76,(440+11)*button_slide,false);

if ( mouse_check_area(750-64,(440-11)*button_slide,750+64,(440+11)*button_slide) ){
draw_set_alpha(0.5);Menu_MainMenu_ButtonSet(4,1);
}else{draw_set_alpha(0.1);}
draw_rectangle(750-76,(440-11)*button_slide,750+76,(440+11)*button_slide,false);

if ( mouse_check_area(530-64,(520-11)*button_slide,530+64,(520+11)*button_slide) ){
draw_set_alpha(0.5);Menu_MainMenu_ButtonSet(5,0);
}else{draw_set_alpha(0.1);}
draw_rectangle(530-76,(520-11)*button_slide,530+76,(520+11)*button_slide,false);

if ( mouse_check_area(750-64,(520-11)*button_slide,750+64,(520+11)*button_slide) ){
draw_set_alpha(0.5);Menu_MainMenu_ButtonSet(5,1);
}else{draw_set_alpha(0.1);}
draw_rectangle(750-76,(520-11)*button_slide,750+76,(520+11)*button_slide,false);

if ( mouse_check_area(530-64,(600-11)*button_slide,530+64,(600+11)*button_slide) ){
draw_set_alpha(0.5);Menu_MainMenu_ButtonSet(6,0);
}else{draw_set_alpha(0.1);}
draw_rectangle(530-76,(600-11)*button_slide,530+76,(600+11)*button_slide,false);

if ( mouse_check_area(750-64,(600-11)*button_slide,750+64,(600+11)*button_slide) ){
draw_set_alpha(0.5);Menu_MainMenu_ButtonSet(6,1);
}else{draw_set_alpha(0.1);}
draw_rectangle(750-76,(600-11)*button_slide,750+76,(600+11)*button_slide,false);


draw_set_alpha(1);var str = "";
if ( control_set[0,0] == 0 ){str = keyboard_get_str(control_cache[0,0]);}else{str="Press Key";}
draw_text(530,(120)*button_slide,str);
if ( control_set[0,1] == 0 ){str = keyboard_get_str(control_cache[0,1]);}else{str="Press Key";}
draw_text(750,(120)*button_slide,str);
if ( control_set[1,0] == 0 ){str = keyboard_get_str(control_cache[1,0]);}else{str="Press Key";}
draw_text(530,(200)*button_slide,str);
if ( control_set[1,1] == 0 ){str = keyboard_get_str(control_cache[1,1]);}else{str="Press Key";}
draw_text(750,(200)*button_slide,str);
if ( control_set[2,0] == 0 ){str = keyboard_get_str(control_cache[2,0]);}else{str="Press Key";}
draw_text(530,(280)*button_slide,str);
if ( control_set[2,1] == 0 ){str = keyboard_get_str(control_cache[2,1]);}else{str="Press Key";}
draw_text(750,(280)*button_slide,str);
if ( control_set[3,0] == 0 ){str = keyboard_get_str(control_cache[3,0]);}else{str="Press Key";}
draw_text(530,(360)*button_slide,str);
if ( control_set[3,1] == 0 ){str = keyboard_get_str(control_cache[3,1]);}else{str="Press Key";}
draw_text(750,(360)*button_slide,str);
if ( control_set[4,0] == 0 ){str = keyboard_get_str(control_cache[4,0]);}else{str="Press Key";}
draw_text(530,(440)*button_slide,str);
if ( control_set[4,1] == 0 ){str = keyboard_get_str(control_cache[4,1]);}else{str="Press Key";}
draw_text(750,(440)*button_slide,str);
if ( control_set[5,0] == 0 ){str = keyboard_get_str(control_cache[5,0]);}else{str="Press Key";}
draw_text(530,(520)*button_slide,str);
if ( control_set[5,1] == 0 ){str = keyboard_get_str(control_cache[5,1]);}else{str="Press Key";}
draw_text(750,(520)*button_slide,str);
if ( control_set[6,0] == 0 ){str = keyboard_get_str(control_cache[6,0]);}else{str="Press Key";}
draw_text(530,(600)*button_slide,str);
if ( control_set[6,1] == 0 ){str = keyboard_get_str(control_cache[6,1]);}else{str="Press Key";}
draw_text(750,(600)*button_slide,str);

// Back
scr_button_handle(0,640,(650)*button_slide,140,36,font_gulim_22,fa_center,fa_middle,"Back");

if ( mouse_check_button_released(mb_left) ){
if ( mouse_over == button_select ){
switch(button_select){
case 0:{
ini_open("settings.ini");
if ( control_cache[0,0] != ini_read_real("controls","MAIN_UP",ord('W')) or control_cache[0,1] != ini_read_real("controls","ALT_UP",vk_up) or 
control_cache[1,0] != ini_read_real("controls","MAIN_DOWN",ord('S')) or control_cache[1,1] != ini_read_real("controls","ALT_DOWN",vk_down) or 
control_cache[2,0] != ini_read_real("controls","MAIN_LEFT",ord('A')) or control_cache[2,1] != ini_read_real("controls","ALT_LEFT",vk_left) or 
control_cache[3,0] != ini_read_real("controls","MAIN_RIGHT",ord('D')) or control_cache[3,1] != ini_read_real("controls","ALT_RIGHT",vk_right) or 
control_cache[4,0] != ini_read_real("controls","MAIN_WALK",vk_lshift) or control_cache[4,1] != ini_read_real("controls","ALT_WALK",vk_lcontrol) or 
control_cache[5,0] != ini_read_real("controls","MAIN_INTERACT",ord('E')) or control_cache[5,1] != ini_read_real("controls","ALT_INTERACT",ord('F')) or 
control_cache[6,0] != ini_read_real("controls","MAIN_INVENTORY",ord('I')) or control_cache[6,1] != ini_read_real("controls","ALT_INVENTORY",vk_tab)
){
menu_state="Confirm Controls";}
else{
menu_state="Main";}
surface_update=true;button_slide=0;
ini_close();break;}
}button_select=-2;io_clear();}}

if ( mouse_check_button_pressed(mb_left) ){
if ( mouse_over != -1 ){button_select = mouse_over;}else{button_select = -2;}}

mouse_over = -1;
