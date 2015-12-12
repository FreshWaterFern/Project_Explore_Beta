/// resolution_update()
with(obj_main_logic){
var ww = display_get_width();
var hh = display_get_height();
var ratio = ww/hh;
if ( ratio >= 1.7 && ratio <= 1.8 ){ // 16:9
switch(g_res){
case 0:{res_x=1024;res_y=576;break;}
case 1:{res_x=1280;res_y=720;break;}
case 2:{res_x=1360;res_y=768;break;}
case 3:{res_x=1366;res_y=768;break;}
case 4:{res_x=1600;res_y=900;break;}
case 5:{res_x=1920;res_y=1080;break;}
case 6:{res_x=2048;res_y=1152;break;}
case 7:{res_x=2560;res_y=1440;break;}
default:{g_res=0;resolution_update();break;}
}res_count=8;}
if ( ratio == 1.6 ){ // 16:10
switch(g_res){
case 0:{res_x=1280;res_y=800;break;}
case 1:{res_x=1440;res_y=900;break;}
case 2:{res_x=1680;res_y=1050;break;}
case 3:{res_x=1920;res_y=1200;break;}
case 4:{res_x=2560;res_y=1600;break;}
default:{g_res=0;resolution_update();break;}
}res_count=5;}
if ( ratio == 1.3333 ){ // 4:3
switch(g_res){
case 0:{res_x=800;res_y=600;break;}
case 1:{res_x=1024;res_y=768;break;}
case 2:{res_x=1152;res_y=864;break;}
case 3:{res_x=1280;res_y=960;break;}
case 4:{res_x=1400;res_y=1050;break;}
case 5:{res_x=1600;res_y=1200;break;}
default:{g_res=0;resolution_update();break;}
}res_count=6;}
if ( window_get_width() != res_x or window_get_height() != res_y ){
window_set_size(res_x,res_y);}
with(obj_main_logic){alarm[1]=3;}

if ( g_fs == 1 ){res_x = display_get_width();res_y = display_get_height();display_reset(0,g_vsync);}
window_set_fullscreen(g_fs); // Override
}
