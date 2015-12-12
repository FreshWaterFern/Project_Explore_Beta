/// draw_inputbox_render(instance_id)

/// Render

draw_set_color(c_white);draw_set_alpha(1);

// Sprite
draw_sprite(spr_input_1,0,argument0.x,argument0.y);

// Text
draw_set_color(c_black);
draw_set_font(font_gulim_18);draw_set_halign(fa_center);draw_set_valign(fa_middle); // Set up our font
var scale1 = 1;
while((string_width(argument0.str)*scale1)>375){scale1-=0.025;}
draw_text_transformed(argument0.x,argument0.y,string(argument0.str),scale1,scale1,0);

// Cursor
argument0.cursor_time++;
if ( argument0.cursor_time > argument0.cursor_blink-(argument0.cursor_blink/2) && argument0.cursor_time <= argument0.cursor_blink ){draw_set_alpha(1);}else{draw_set_alpha(0);}
if ( argument0.cursor_time >= argument0.cursor_blink ){argument0.cursor_time=0;}
if( argument0.select == true ){
if ( scale1 == 1 ){draw_rectangle(argument0.x+(string_width(string(argument0.str))/2)+3,argument0.y-(16*scale1),argument0.x+(string_width(string(argument0.str))/2)+5,argument0.y+(16*scale1),false);}
else{draw_rectangle(argument0.x+179-(1*scale1),argument0.y-(16*scale1),argument0.x+179+(1*scale1),argument0.y+(16*scale1),false);}}

draw_set_color(c_white);
