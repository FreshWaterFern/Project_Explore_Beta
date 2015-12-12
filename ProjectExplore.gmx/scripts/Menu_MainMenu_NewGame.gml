/// Menu_MainMenu_NewGame()

if ( !surface_exists(surface_main) ){
surface_main = surface_create(view_wview[0],view_hview[0]);
surface_update = true;}

if ( surface_update ){

surface_set_target(surface_main);

draw_clear_alpha(0,0);

draw_sprite_ext(spr_menu_start,0,640,360*button_slide,1,1,0,c_white,1);
draw_set_color(make_colour_rgb(82,51,27));draw_set_alpha(0.75);
draw_line_width(570,0,570,140*button_slide,5);
draw_line_width(710,0,710,140*button_slide,5);
draw_set_color(c_black);draw_set_alpha(0.25);
draw_circle(570,140*button_slide,12,false);
draw_circle(710,140*button_slide,12,false);
draw_set_color(make_colour_rgb(90,90,90));draw_set_alpha(1);
draw_circle(570,140*button_slide,8,false);
draw_circle(710,140*button_slide,8,false);
draw_set_color(make_colour_rgb(130,130,130));draw_set_alpha(1);
draw_circle(570,140*button_slide,2,false);
draw_circle(710,140*button_slide,2,false);
draw_set_color(c_white);draw_set_alpha(1);

surface_reset_target();
surface_update = false;

}

draw_surface(surface_main,0,0);

draw_set_color(make_colour_rgb(180,180,180));draw_set_alpha(1);
draw_set_font(font_gulim_12);draw_set_halign(fa_center);draw_set_valign(fa_middle);
draw_text(640,442*button_slide,global.world_size);


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

// Special Code
if ( !instance_exists(inst_input[0]) ){
inst_input[0] = instance_create(640,210,obj_menu_inputbox);
inst_input[1] = instance_create(640,310,obj_menu_inputbox);
inst_input[0].select = true;inst_input[0].str = "World_Default";
inst_input[1].select = false;inst_input[1].str = "Seabass";

cache_y[0] = inst_input[0].y;
cache_y[1] = inst_input[1].y;
}else{
inst_input[0].y = cache_y[0]*button_slide;
inst_input[1].y = cache_y[1]*button_slide;
draw_inputbox_render(inst_input[0]);
draw_inputbox_render(inst_input[1]);
}

var offset = 32;

// World Name
scr_button_handle(0,640,(160+offset)*button_slide,200,36,font_gulim_22,fa_center,fa_middle,"World Name");
// World Seed
scr_button_handle(1,640,(260+offset)*button_slide,200,36,font_gulim_22,fa_center,fa_middle,"World Seed");
// World Size
scr_button_handle(2,640,(360+offset)*button_slide,200,36,font_gulim_22,fa_center,fa_middle,"World Size");
// Start Game
scr_button_handle(3,640,(460+offset)*button_slide,200,36,font_gulim_22,fa_center,fa_middle,"Start Game");
// Back
scr_button_handle(4,640,(510+offset)*button_slide,140,36,font_gulim_22,fa_center,fa_middle,"Back");

if ( mouse_check_button_released(mb_left) ){
if ( mouse_over == button_select ){
switch(button_select){
case 0:{inst_input[0].select = true;inst_input[1].select = false;break;}
case 1:{inst_input[0].select = false;inst_input[1].select = true;break;}
case 2:{
switch(global.world_size){
case "Small":{global.world_size = "Medium";break;}
case "Medium":{global.world_size = "Large";break;}
case "Large":{global.world_size = "Extra Large";break;}
case "Extra Large":{global.world_size = "Small";break;}}
break;}
case 3:{
global.save_loading = false;
global.world_name = inst_input[0].str;
random_set_seed(convert_string_to_numbers(inst_input[1].str));
room_goto(room_character_editor);break;}
case 4:{menu_state="Main";surface_update=true;button_slide=0;break;}
}button_select=-2;}}

if ( mouse_check_button_pressed(mb_left) ){
if ( mouse_over != -1 ){button_select = mouse_over;}else{button_select = -2;}}

mouse_over = -1;
