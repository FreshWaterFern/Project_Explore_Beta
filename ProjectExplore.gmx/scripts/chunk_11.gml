/// chunk_11(pre_x,pre_y)

var type = 0;
var chance = 0;
var r_x = 0;
var r_y = 0;
var side_check = 0;
var multi_sides = 0;
var pre_x = argument0*1280;
var pre_y = argument1*1280;
var pre_x128 = round(pre_x/128);
var pre_y128 = round(pre_y/128);
var scale = 0;
var inst = 0;
var sprite = 0;
var i = 0;
var r = 0;
var temp_var0 = 0;
var temp_var1 = 0;
var temp_var2 = 2;
var temp_var3 = 3;

ds_grid_set(global.world_biomes,pre_x/1280,pre_y/1280,11);
ds_grid_set(global.world_temperature,pre_x/512,pre_y/512,random_range(60,80));
ds_grid_set(global.world_temperature,pre_x/512,(pre_y/512)+1,random_range(60,80));
ds_grid_set(global.world_temperature,(pre_x/512)+1,pre_y/512,random_range(60,80));
ds_grid_set(global.world_temperature,(pre_x/512)+1,(pre_y/512)+1,random_range(60,80));
ds_grid_set_region(global.world_tiles,pre_x128,pre_y128,pre_x128+9,pre_y128+9,0);

var offset_x = pre_x+128;var offset_y = pre_y+128;

if( irandom(4) <= 3 ){
if ( global.world_tiles[# pre_x128+4,pre_y128-2] == 10 )
{global.world_tiles[# pre_x128+4,pre_y128-1] = 10;global.world_tiles[# pre_x128+4,pre_y128] = 10;}
global.world_tiles[# pre_x128+4,pre_y128+1] = 10;global.world_tiles[# pre_x128+5,pre_y128+1] = 10;
global.world_tiles[# pre_x128+6,pre_y128+1] = 10;global.world_tiles[# pre_x128+7,pre_y128+1] = 10;
global.world_tiles[# pre_x128+8,pre_y128+1] = 10;global.world_tiles[# pre_x128+9,pre_y128+1] = 10;
if( irandom(4) <= 3 ){
global.world_tiles[# pre_x128+7,pre_y128+2] = 10;
offset_x += 768;offset_y += 256;
structure_wood_1x1(offset_x,offset_y,"up",false);
if ( irandom(2) == 2 ){inst = instance_create(offset_x+80,offset_y-84,objind(obj_smallcrate));
inst.treasure_spawn = true;}
if ( irandom(2) == 2 ){inst = instance_create(offset_x-80,offset_y-84,objind(obj_smallcrate));
inst.treasure_spawn = true;}
}}

if( irandom(4) <= 3 ){
global.world_tiles[# pre_x128+9,pre_y128+2] = 10;
offset_x = pre_x+128;offset_y = pre_y+128;
offset_x += 1024;offset_y += 256;
if ( global.world_tiles[# pre_x128+4,pre_y128-2] == 10 )
{global.world_tiles[# pre_x128+4,pre_y128-1] = 10;global.world_tiles[# pre_x128+4,pre_y128] = 10;}
global.world_tiles[# pre_x128+4,pre_y128+1] = 10;global.world_tiles[# pre_x128+5,pre_y128+1] = 10;
global.world_tiles[# pre_x128+6,pre_y128+1] = 10;global.world_tiles[# pre_x128+7,pre_y128+1] = 10;
global.world_tiles[# pre_x128+8,pre_y128+1] = 10;global.world_tiles[# pre_x128+9,pre_y128+1] = 10;
switch(irandom(1)){
case 0:{structure_wood_1x1(offset_x,offset_y,"up",false);
if ( irandom(2) == 2 ){inst = instance_create(offset_x+80,offset_y-84,objind(obj_smallcrate));
inst.treasure_spawn = true;}
if ( irandom(2) == 2 ){inst = instance_create(offset_x-80,offset_y-84,objind(obj_smallcrate));
inst.treasure_spawn = true;}break;}

case 1:{structure_wood_1x2(offset_x,offset_y,"up",false);
if ( irandom(2) == 2 ){inst = instance_create(offset_x+80,offset_y-84,objind(obj_smallcrate));
inst.treasure_spawn = true;}
if ( irandom(2) == 2 ){inst = instance_create(offset_x-80,offset_y-84,objind(obj_smallcrate));
inst.treasure_spawn = true;}break;}
}}

if( irandom(4) <= 3 ){
if ( global.world_tiles[# pre_x128+4,pre_y128-2] == 10 )
{global.world_tiles[# pre_x128+4,pre_y128-1] = 10;global.world_tiles[# pre_x128+4,pre_y128] = 10;}
global.world_tiles[# pre_x128+4,pre_y128+1] = 10;global.world_tiles[# pre_x128+4,pre_y128+2] = 10;
global.world_tiles[# pre_x128+4,pre_y128+3] = 10;global.world_tiles[# pre_x128+4,pre_y128+4] = 10;
global.world_tiles[# pre_x128+4,pre_y128+5] = 10;global.world_tiles[# pre_x128+4,pre_y128+6] = 10;
global.world_tiles[# pre_x128+4,pre_y128+7] = 10;global.world_tiles[# pre_x128+4,pre_y128+8] = 10;
if ( global.world_tiles[# pre_x128+4,pre_y128+11] == 10 )
{global.world_tiles[# pre_x128+4,pre_y128+10] = 10;global.world_tiles[# pre_x128+4,pre_y128+9] = 10;}

offset_x = pre_x+128;offset_y = pre_y+128;
if( irandom(4) <= 3 ){
global.world_tiles[# pre_x128+2,pre_y128+1] = 10;
global.world_tiles[# pre_x128+3,pre_y128+1] = 10;
global.world_tiles[# pre_x128+4,pre_y128+1] = 10;
switch(irandom(1)){
case 0:{structure_wood_1x1(offset_x,offset_y,"right",false);
if ( irandom(2) == 2 ){inst = instance_create(offset_x+96,offset_y+60,objind(obj_smallcrate));
inst.treasure_spawn = true;}
if ( irandom(2) == 2 ){inst = instance_create(offset_x+96,offset_y-60,objind(obj_smallcrate));
inst.treasure_spawn = true;}break;}

case 1:{structure_wood_1x2(offset_x,offset_y,"right",false);
if ( irandom(2) == 2 ){inst = instance_create(offset_x+96,offset_y+96,objind(obj_smallcrate));
inst.treasure_spawn = true;}
if ( irandom(2) == 2 ){inst = instance_create(offset_x+96,offset_y-60,objind(obj_smallcrate));
inst.treasure_spawn = true;}break;}
}}


offset_y += 384;
if( irandom(4) <= 3 ){
global.world_tiles[# pre_x128+2,pre_y128+4] = 10;
global.world_tiles[# pre_x128+3,pre_y128+4] = 10;
global.world_tiles[# pre_x128+4,pre_y128+4] = 10;
switch(irandom(1)){
case 0:{structure_wood_1x1(offset_x,offset_y,"right",false);
if ( irandom(2) == 2 ){inst = instance_create(offset_x+96,offset_y+60,objind(obj_smallcrate));
inst.treasure_spawn = true;}
if ( irandom(2) == 2 ){inst = instance_create(offset_x+96,offset_y-60,objind(obj_smallcrate));
inst.treasure_spawn = true;}break;}

case 1:{structure_wood_1x2(offset_x,offset_y,"right",false);
if ( irandom(2) == 2 ){inst = instance_create(offset_x+96,offset_y+96,objind(obj_smallcrate));
inst.treasure_spawn = true;}
if ( irandom(2) == 2 ){inst = instance_create(offset_x+96,offset_y-60,objind(obj_smallcrate));
inst.treasure_spawn = true;}break;}
}}


offset_y += 384;
if( irandom(4) <= 3 ){
global.world_tiles[# pre_x128+2,pre_y128+7] = 10;
global.world_tiles[# pre_x128+3,pre_y128+7] = 10;
global.world_tiles[# pre_x128+4,pre_y128+7] = 10;
switch(irandom(1)){
case 0:{structure_wood_1x1(offset_x,offset_y,"right",false);
if ( irandom(2) == 2 ){inst = instance_create(offset_x+96,offset_y+60,objind(obj_smallcrate));
inst.treasure_spawn = true;}
if ( irandom(2) == 2 ){inst = instance_create(offset_x+96,offset_y-60,objind(obj_smallcrate));
inst.treasure_spawn = true;}break;}

case 1:{structure_wood_1x2(offset_x,offset_y,"right",false);
if ( irandom(2) == 2 ){inst = instance_create(offset_x+96,offset_y+96,objind(obj_smallcrate));
inst.treasure_spawn = true;}
if ( irandom(2) == 2 ){inst = instance_create(offset_x+96,offset_y-60,objind(obj_smallcrate));
inst.treasure_spawn = true;}break;}
}}}

if( irandom(4) <= 3 ){
global.world_tiles[# pre_x128+5,pre_y128+7] = 10;global.world_tiles[# pre_x128+6,pre_y128+7] = 10;
global.world_tiles[# pre_x128+7,pre_y128+7] = 10;global.world_tiles[# pre_x128+7,pre_y128+8] = 10;
if( irandom(4) <= 3 ){
offset_x = pre_x+128;offset_y = pre_y+128;
offset_x += 768;offset_y -= 256;
structure_wood_1x1(offset_x,offset_y,"up",false);
if ( irandom(2) == 2 ){inst = instance_create(offset_x+96,offset_y-48,objind(obj_smallcrate));
inst.treasure_spawn = true;}}
if( irandom(4) <= 3 ){
offset_x = pre_x+128;offset_y = pre_y+128;
offset_x += 768;offset_y -= 256;offset_y += 512;
global.world_tiles[# pre_x128+7,pre_y128+8] = 10;structure_wood_1x2(offset_x,offset_y,"up",false);
if ( irandom(2) == 2 ){inst = instance_create(offset_x+96,offset_y-72,objind(obj_smallcrate));
inst.treasure_spawn = true;}
if ( irandom(2) == 2 ){inst = instance_create(offset_x-96,offset_y-72,objind(obj_smallcrate));
inst.treasure_spawn = true;}}
}
