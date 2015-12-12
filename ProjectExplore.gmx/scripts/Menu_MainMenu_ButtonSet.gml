/// Menu_MainMenu_ButtonSet(index0,index1)
if ( mouse_check_button_pressed(mb_left) ){
var i = 0;var r = 0;
for(i=0;i<7;i++){
for(r=0;r<2;r++){
control_set[i,r] = 0;
}
r = 0;
}
control_set[argument0,argument1] = 1;
}
