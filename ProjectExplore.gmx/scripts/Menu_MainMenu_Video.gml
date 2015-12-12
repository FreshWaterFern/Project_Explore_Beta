/// Menu_MainMenu_Video()

if ( !surface_exists(surface_main) ){
surface_main = surface_create(view_wview[0],view_hview[0]);
surface_update = true;}

if ( surface_update ){

surface_set_target(surface_main);

draw_clear_alpha(0,0);

draw_sprite_ext(spr_menu_settings,0,640,360*button_slide,1,1,0,c_white,1);
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

draw_set_color(make_colour_rgb(180,180,180));draw_set_alpha(1);
draw_set_font(font_gulim_18);draw_set_halign(fa_center);draw_set_valign(fa_middle);
draw_text(640,(242+offset)*button_slide,resolution_get(res_cache));

var str = "";
switch(vsync_cache){
case 0:{str = "Off";break;}
case 1:{str = "On";break;}
}
draw_text(640,(342+offset)*button_slide,str);

switch(sampling_cache){
case -1:{str = "Default";break;}
case 0:{str = "Bicubic";break;}
case 1:{str = "HQ 4x";break;}
case 2:{str = "BR 5x (rounded)";break;}
case 3:{str = "BR 5x (semi-rounded)";break;}
case 4:{str = "BR 5x (squared)";break;}
}
draw_text(640,(442+offset)*button_slide,str);

switch(fs_cache){
case 0:{str = "Off";break;}
case 1:{str = "On";break;}
}
draw_text(640,(542+offset)*button_slide,str);

switch(decal_cache){
case 0:{str = "Low";break;}
case 1:{str = "Medium";break;}
case 2:{str = "High";break;}
case 3:{str = "Very High";break;}
case 4:{str = "Ultra";break;}
}
draw_text(640,(642+offset)*button_slide,str);


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

offset = -80;

// Resolution
scr_button_handle(0,640,(160+offset)*button_slide,200,36,font_gulim_22,fa_center,fa_middle,"Resolution");
// Vsync
scr_button_handle(1,640,(260+offset)*button_slide,200,36,font_gulim_22,fa_center,fa_middle,"Vertical Sync");
// Scaling Method
scr_button_handle(2,640,(360+offset)*button_slide,230,36,font_gulim_22,fa_center,fa_middle,"Scaling Method");
// Fullscreen
scr_button_handle(3,640,(460+offset)*button_slide,200,36,font_gulim_22,fa_center,fa_middle,"Fullscreen");
// Decal Limit
scr_button_handle(4,640,(560+offset)*button_slide,200,36,font_gulim_22,fa_center,fa_middle,"Decal Limit");
// Back
scr_button_handle(5,640,(690+offset)*button_slide,140,36,font_gulim_22,fa_center,fa_middle,"Back");

if ( mouse_check_button_released(mb_left) ){
if ( mouse_over == button_select ){
switch(button_select){
case 0:{
res_cache++;
if ( display_get_width()+1 <= resolution_get_width(res_cache) or display_get_height()+1 <= resolution_get_height(res_cache) ){res_cache=0;}
if ( display_get_width()/display_get_height() >= 1.76 && display_get_width()/display_get_height() <= 1.79 ){ // 16:9
if(res_cache>7){res_cache=0;}}
if ( display_get_width()/display_get_height() == 1.6 ){ // 16:10
if(res_cache>4){res_cache=0;}}
if ( display_get_width()/display_get_height() == 1.3333 ){ // 4:3
if(res_cache>5){res_cache=0;}}
break;}
case 1:{if(vsync_cache){vsync_cache=false;}else{vsync_cache=true;}break;}
case 2:{sampling_cache++;if(sampling_cache>4){sampling_cache=-1;}break;}
case 3:{if(fs_cache){fs_cache=false;}else{fs_cache=true;}break;}
case 4:{decal_cache++;if(decal_cache>4){decal_cache=0;}break;}
case 5:{
if ( res_cache != obj_main_logic.g_res or vsync_cache != obj_main_logic.g_vsync or sampling_cache != obj_main_logic.g_sampling or blood_cache != obj_main_logic.g_blood or decal_cache != obj_main_logic.g_decals or fs_cache != obj_main_logic.g_fs ){
menu_state="Confirm Video";}
else{
menu_state="Main";}
surface_update=true;button_slide=0;break;}
}button_select=-2;io_clear();}}

if ( mouse_check_button_pressed(mb_left) ){
if ( mouse_over != -1 ){button_select = mouse_over;}else{button_select = -2;}}

mouse_over = -1;
