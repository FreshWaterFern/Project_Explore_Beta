/// scr_button_handle(button_id,x,y,width,height,font,halign,valign,string)

gml_pragma("forceinline");

var color = c_white;

draw_set_font(argument5);draw_set_halign(argument6);draw_set_valign(argument7);

if ( argument6 == fa_center ){
if ( mouse_check_area(argument1-(argument3/2),argument2-(argument4/2),argument1+(argument3/2),argument2+(argument4/2)) ){mouse_over = argument0;}}

if ( argument6 == fa_left ){
if ( mouse_check_area(argument1+(string_width(argument8)/2)-(argument3/2),argument2-(argument4/2),argument1+(string_width(argument8)/2)+(argument3/2),argument2+(argument4/2)) ){mouse_over = argument0;}}


if ( mouse_over != argument0 ){color = c_white}else{color = gray}if ( button_select == argument0 ){color = c_white}
draw_set_color(color);draw_set_alpha(1);
draw_text(argument1,argument2,argument8);
