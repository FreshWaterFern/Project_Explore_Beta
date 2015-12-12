/// Menu_MainMenu_Main()

if ( !surface_exists(surface_main) ){
surface_main = surface_create(view_wview[0],view_hview[0]);
surface_update = true;}

if ( surface_update ){

surface_set_target(surface_main);

draw_clear_alpha(0,0);

draw_sprite(spr_menu_main,0,135*button_slide,room_height/2);

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

// Single Player
scr_button_handle(0,16*button_slide,160+offset,200,36,font_gulim_22,fa_left,fa_middle,"Single Player");
// Multiplayer
scr_button_handle(1,16*button_slide,216+offset,200,36,font_gulim_22,fa_left,fa_middle,"Multiplayer");
// Options
scr_button_handle(2,16*button_slide,272+offset,200,36,font_gulim_22,fa_left,fa_middle,"Options");
// Mods
scr_button_handle(3,16*button_slide,328+offset,200,36,font_gulim_22,fa_left,fa_middle,"Mods");
// Item Viewer
scr_button_handle(4,16*button_slide,384+offset,200,36,font_gulim_22,fa_left,fa_middle,"Item Viewer");
// Game Wiki
scr_button_handle(5,16*button_slide,440+offset,200,36,font_gulim_22,fa_left,fa_middle,"Game Wiki");
// Quit Game
scr_button_handle(6,16*button_slide,496+offset,200,36,font_gulim_22,fa_left,fa_middle,"Quit Game");

if ( mouse_check_button_released(mb_left) ){
if ( mouse_over == button_select ){
switch(button_select){
case 0:{menu_state="SP";surface_update=true;button_slide=0;break;}
case 1:{menu_state="MP";surface_update=true;button_slide=0;break;}
case 2:{menu_state="Options";surface_update=true;button_slide=0;break;}
case 3:{menu_state="Mods";surface_update=true;button_slide=0;
ds_list_copy(mod_cache_list,global.mod_BL_list);break;}
case 4:{/*menu_state="Item Viewer";*/surface_update=true;button_slide=0;break;}
case 5:{url_open("http://wiki.projectexploregame.com");surface_update=true;button_slide=0;break;}
case 6:{game_end();break;}
}}button_select=-2;}

if ( mouse_check_button_pressed(mb_left) ){
if ( mouse_over != -1 ){button_select = mouse_over;}else{button_select = -2;}}

mouse_over = -1;
