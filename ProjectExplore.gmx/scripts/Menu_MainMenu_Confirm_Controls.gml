/// Menu_MainMenu_Confirm_Controls()

if ( !surface_exists(surface_main) ){
surface_main = surface_create(view_wview[0],view_hview[0]);
surface_update = true;}

if ( surface_update ){

surface_set_target(surface_main);

draw_clear_alpha(0,0);

draw_sprite_ext(spr_menu_confirm,0,640,360*button_slide,1,1,0,c_white,1);
draw_set_color(make_colour_rgb(82,51,27));draw_set_alpha(0.75);
draw_line_width(370,0,370,260*button_slide,5);
draw_line_width(910,0,910,260*button_slide,5);
draw_set_color(c_black);draw_set_alpha(0.25);
draw_circle(370,260*button_slide,12,false);
draw_circle(910,260*button_slide,12,false);
draw_set_color(make_colour_rgb(90,90,90));draw_set_alpha(1);
draw_circle(370,260*button_slide,8,false);
draw_circle(910,260*button_slide,8,false);
draw_set_color(make_colour_rgb(130,130,130));draw_set_alpha(1);
draw_circle(370,260*button_slide,2,false);
draw_circle(910,260*button_slide,2,false);
draw_set_color(c_white);draw_set_alpha(1);

draw_set_font(font_gulim_18);draw_set_halign(fa_center);draw_set_valign(fa_top);
draw_text(640,255*button_slide,string_split("Are you sure you would like to make these changes to your control settings?",510));

surface_reset_target();
surface_update = false;

}

draw_surface(surface_main,0,0);

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

var offset = 32;

// No
scr_button_handle(0,640-200,(410+offset)*button_slide,120,36,font_gulim_22,fa_center,fa_middle,"No");
// Yes
scr_button_handle(1,640+200,(410+offset)*button_slide,120,36,font_gulim_22,fa_center,fa_middle,"Yes");

if ( mouse_check_button_released(mb_left) ){
if ( mouse_over == button_select ){
switch(button_select){
case 0:{
ini_open("settings.ini");
control_cache[0,0] = ini_read_real("controls","MAIN_UP",ord('W'));
control_cache[0,1] = ini_read_real("controls","ALT_UP",vk_up);
control_cache[1,0] = ini_read_real("controls","MAIN_DOWN",ord('S'));
control_cache[1,1] = ini_read_real("controls","ALT_DOWN",vk_down);
control_cache[2,0] = ini_read_real("controls","MAIN_LEFT",ord('A'));
control_cache[2,1] = ini_read_real("controls","ALT_LEFT",vk_left);
control_cache[3,0] = ini_read_real("controls","MAIN_RIGHT",ord('D'));
control_cache[3,1] = ini_read_real("controls","ALT_RIGHT",vk_right);
control_cache[4,0] = ini_read_real("controls","MAIN_WALK",vk_lshift);
control_cache[4,1] = ini_read_real("controls","ALT_WALK",vk_lcontrol);
control_cache[5,0] = ini_read_real("controls","MAIN_INTERACT",ord('E'));
control_cache[5,1] = ini_read_real("controls","ALT_INTERACT",ord('F'));
control_cache[6,0] = ini_read_real("controls","MAIN_INVENTORY",ord('I'));
control_cache[6,1] = ini_read_real("controls","ALT_INVENTORY",vk_tab);
ini_close();
menu_state="Options";surface_update=true;button_slide=0;break;}
case 1:{
keyboard_save_controls("Move Up",0,control_cache[0,0]);
keyboard_save_controls("Move Up",1,control_cache[0,1]);
keyboard_save_controls("Move Down",0,control_cache[1,0]);
keyboard_save_controls("Move Down",1,control_cache[1,1]);
keyboard_save_controls("Move Left",0,control_cache[2,0]);
keyboard_save_controls("Move Left",1,control_cache[2,1]);
keyboard_save_controls("Move Right",0,control_cache[3,0]);
keyboard_save_controls("Move Right",1,control_cache[3,1]);
keyboard_save_controls("Walk",0,control_cache[4,0]);
keyboard_save_controls("Walk",1,control_cache[4,1]);
keyboard_save_controls("Interact",0,control_cache[5,0]);
keyboard_save_controls("Interact",1,control_cache[5,1]);
keyboard_save_controls("Inventory",0,control_cache[6,0]);
keyboard_save_controls("Inventory",1,control_cache[6,1]);
menu_state="Options";surface_update=true;button_slide=0;break;}
}}button_select=-2;io_clear();}

if ( mouse_check_button_pressed(mb_left) ){
if ( mouse_over != -1 ){button_select = mouse_over;}else{button_select = -2;}}

mouse_over = -1;
