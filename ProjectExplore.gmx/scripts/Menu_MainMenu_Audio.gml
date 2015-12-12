/// Menu_MainMenu_Audio()

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

var str = "";

var offset = -112;

draw_set_color(make_colour_rgb(180,180,180));draw_set_alpha(1);
draw_set_font(font_gulim_22);draw_set_halign(fa_center);draw_set_valign(fa_middle);
draw_text(640,(220+offset)*button_slide,"Master Volume");
draw_text(640,(320+offset)*button_slide,"Music Volume");
draw_text(640,(420+offset)*button_slide,"Sound Volume");
draw_text(640,(520+offset)*button_slide,"Ambience Volume");

//draw_text(640,(542+offset)*button_slide,str);


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

var width = sprite_get_width(spr_menu_audio_bar);

// Custom Slider (Master Volume)
var left_side = (640-(width/2));var right_side = (640+(width/2));
draw_sprite(spr_menu_audio_bar,0,640,(240+offset)*button_slide);
draw_sprite(spr_menu_audio_slider,0,(640-(width/2))+(obj_volume.xm*width),(240+offset)*button_slide);
if ( mouse_check_area(640-(width/2),240+offset-20,640+(width/2),240+offset+20) or obj_volume.a0 ){
if ( mouse_check_button(mb_left) ){
obj_volume.a0 = true;obj_volume.a1=false;obj_volume.a2=false;obj_volume.a3=false;
obj_volume.xm = (mouse_x-view_xview[0]);
obj_volume.xm = obj_volume.xm-left_side;
obj_volume.xm = obj_volume.xm/width;
obj_volume.xm = clamp(obj_volume.xm,0,1);
}}

draw_sprite(spr_menu_audio_bar,0,640,(340+offset)*button_slide);
draw_sprite(spr_menu_audio_slider,0,(640-(width/2))+(obj_volume.x1*width),(340+offset)*button_slide);
if ( mouse_check_area(640-(width/2),340+offset-20,640+(width/2),340+offset+20) or obj_volume.a1 ){
if ( mouse_check_button(mb_left) ){
obj_volume.a0 = false;obj_volume.a1=true;obj_volume.a2=false;obj_volume.a3=false;
obj_volume.x1 = (mouse_x-view_xview[0]);
obj_volume.x1 = obj_volume.x1-left_side;
obj_volume.x1 = obj_volume.x1/width;
obj_volume.x1 = clamp(obj_volume.x1,0,1);
}}

draw_sprite(spr_menu_audio_bar,0,640,(440+offset)*button_slide);
draw_sprite(spr_menu_audio_slider,0,(640-(width/2))+(obj_volume.x2*width),(440+offset)*button_slide);
if ( mouse_check_area(640-(width/2),440+offset-20,640+(width/2),440+offset+20) or obj_volume.a2 ){
if ( mouse_check_button(mb_left) ){
obj_volume.a0 = false;obj_volume.a1=false;obj_volume.a2=true;obj_volume.a3=false;
obj_volume.x2 = (mouse_x-view_xview[0]);
obj_volume.x2 = obj_volume.x2-left_side;
obj_volume.x2 = obj_volume.x2/width;
obj_volume.x2 = clamp(obj_volume.x2,0,1);
}}

draw_sprite(spr_menu_audio_bar,0,640,(540+offset)*button_slide);
draw_sprite(spr_menu_audio_slider,0,(640-(width/2))+(obj_volume.x3*width),(540+offset)*button_slide);
if ( mouse_check_area(640-(width/2),540+offset-20,640+(width/2),540+offset+20) or obj_volume.a3 ){
if ( mouse_check_button(mb_left) ){
obj_volume.a0 = false;obj_volume.a1=false;obj_volume.a2=false;obj_volume.a3=true;
obj_volume.x3 = (mouse_x-view_xview[0]);
obj_volume.x3 = obj_volume.x3-left_side;
obj_volume.x3 = obj_volume.x3/width;
obj_volume.x3 = clamp(obj_volume.x3,0,1);
}}

if ( mouse_check_button_released(mb_left) ){
obj_volume.a0=false;obj_volume.a1=false;obj_volume.a2=false;obj_volume.a3=false;}

// Back
scr_button_handle(0,640,(690+offset)*button_slide,140,36,font_gulim_22,fa_center,fa_middle,"Back");

if ( mouse_check_button_released(mb_left) ){
if ( mouse_over == button_select ){
switch(button_select){
case 0:{
if ( obj_volume.xm != cache_x[0] or obj_volume.x1 != cache_x[1] or obj_volume.x2 != cache_x[2] or obj_volume.x3 != cache_x[3] ){
menu_state="Confirm Audio";}
else{
menu_state="Main";}
surface_update=true;button_slide=0;break;}
}button_select=-2;io_clear();}}

if ( mouse_check_button_pressed(mb_left) ){
if ( mouse_over != -1 ){button_select = mouse_over;}else{button_select = -2;}}

mouse_over = -1;
