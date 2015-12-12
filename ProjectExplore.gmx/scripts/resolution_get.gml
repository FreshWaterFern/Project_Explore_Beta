/// resolution_get(num)
var x_res = 0;var y_res = 0;
var ww = display_get_width();
var hh = display_get_height();
if ( ww/hh >= 1.76 && ww/hh <= 1.79 ){
switch(argument0){
case 0:{x_res=1024;y_res=576;break;}
case 1:{x_res=1280;y_res=720;break;}
case 2:{x_res=1360;y_res=768;break;}
case 3:{x_res=1366;y_res=768;break;}
case 4:{x_res=1600;y_res=900;break;}
case 5:{x_res=1920;y_res=1080;break;}
case 6:{x_res=2048;y_res=1152;break;}
case 7:{x_res=2560;y_res=1440;break;}
}obj_main_logic.res_count=8;}
if ( ww/hh == 1.6 ){
switch(argument0){
case 0:{x_res=1280;y_res=800;break;}
case 1:{x_res=1440;y_res=900;break;}
case 2:{x_res=1680;y_res=1050;break;}
case 3:{x_res=1920;y_res=1200;break;}
case 4:{x_res=2560;y_res=1600;break;}
}obj_main_logic.res_count=5;}
if ( ww/hh == 1.3333 ){
switch(argument0){
case 0:{x_res=800;y_res=600;break;}
case 1:{x_res=1024;y_res=768;break;}
case 2:{x_res=1152;y_res=864;break;}
case 3:{x_res=1280;y_res=960;break;}
case 4:{x_res=1400;y_res=1050;break;}
case 5:{x_res=1600;y_res=1200;break;}
}obj_main_logic.res_count=6;}

return string(x_res)+"x"+string(y_res)
