/// Menu_MainMenu_Options()

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

var offset = -118;

// Video
scr_button_handle(0,640,(410+offset)*button_slide,300,36,font_gulim_22,fa_center,fa_middle,"Video Settings");
// Audio
scr_button_handle(1,640,(460+offset)*button_slide,300,36,font_gulim_22,fa_center,fa_middle,"Audio Settings");
// Key Mapping
scr_button_handle(2,640,(510+offset)*button_slide,280,36,font_gulim_22,fa_center,fa_middle,"Key Mapping");
// Back
scr_button_handle(3,640,(560+offset)*button_slide,130,36,font_gulim_22,fa_center,fa_middle,"Back");

if ( mouse_check_button_released(mb_left) ){
if ( mouse_over == button_select ){
switch(button_select){
case 0:{menu_state="Video";surface_update=true;button_slide=0;break;}
case 1:{menu_state="Audio";surface_update=true;button_slide=0;break;}
case 2:{menu_state="Controls";surface_update=true;button_slide=0;break;}
case 3:{menu_state="Main";surface_update=true;button_slide=0;break;}
}}button_select=-2;}

if ( mouse_check_button_pressed(mb_left) ){
if ( mouse_over != -1 ){button_select = mouse_over;}else{button_select = -2;}}

mouse_over = -1;
