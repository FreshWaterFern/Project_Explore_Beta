/// Menu_MainMenu_Confirm_Mods()

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
draw_text(640,255*button_slide,string_split("Are you sure you would like to make these changes to your mod list? Selecting 'Yes' will restart the game with your new settings.",510));

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
menu_state="Main";surface_update=true;button_slide=0;io_clear();break;}
case 1:{
file_delete("mod_blacklist.txt");
file_log_write("Deleted 'mod_blacklist.txt', creating file with new user settings...");
var file = file_text_open_write("mod_blacklist.txt");
file_text_write_string(file,"// -- 1 = Enabled, 0 = Disabled -- \\");file_text_writeln(file);
for(var i=0;i<ds_list_size(mod_cache_list);i++){
file_text_write_string(file,mod_cache_list[|i]);file_text_writeln(file);}
file_text_close(file);
file_log_write("The user has modified the mod blacklist settings, restarting game...");
unload_game_data();game_restart();break;}
}}button_select=-2;io_clear();}

if ( mouse_check_button_pressed(mb_left) ){
if ( mouse_over != -1 ){button_select = mouse_over;}else{button_select = -2;}}

mouse_over = -1;