/// structure_wood_1x1(offset_x,offset_y,door_side,locked)
var inst = 0;var offset_x = argument0;var offset_y = argument1;
global.world_tiles[# floor((argument0/128)),floor((argument1/128))] = 8;

// Left Side
if ( argument2 == "left" ){
inst=instance_create(offset_x-64,offset_y,objind(obj_wood_doorway1));inst.image_angle=90;
inst=instance_create(offset_x-64,offset_y-25,objind(obj_construct_door));inst.image_angle=90;inst.door_construct=0;inst.door_locked=argument3;
}else{inst=instance_create(offset_x-64,offset_y,objind(obj_wood_wall1));inst.image_angle=90;}
// Right Side
if ( argument2 == "right" ){
inst=instance_create(offset_x+64,offset_y,objind(obj_wood_doorway1));inst.image_angle=90;
inst=instance_create(offset_x+64,offset_y-25,objind(obj_construct_door));inst.image_angle=90;inst.door_construct=0;inst.door_locked=argument3;
}else{inst=instance_create(offset_x+64,offset_y,objind(obj_wood_wall1));inst.image_angle=90;}
// Up Side
if ( argument2 == "up" ){
inst=instance_create(offset_x,offset_y-64,objind(obj_wood_doorway1));
inst=instance_create(offset_x-25,offset_y-64,objind(obj_construct_door));inst.door_construct=0;inst.door_locked=argument3;
}else{inst=instance_create(offset_x,offset_y-64,objind(obj_wood_wall1));}
// Down Side
if ( argument2 == "down" ){
inst=instance_create(offset_x,offset_y+64,objind(obj_wood_doorway1));
inst=instance_create(offset_x-25,offset_y+64,objind(obj_construct_door));inst.door_construct=0;inst.door_locked=argument3;
}else{inst=instance_create(offset_x,offset_y+64,objind(obj_wood_wall1));}
// Ceiling
inst=instance_create(offset_x,offset_y,objind(obj_wood_ceiling1));
