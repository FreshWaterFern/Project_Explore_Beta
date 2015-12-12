/// chunk_9(pre_x,pre_y)

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

ds_grid_set(global.world_biomes,pre_x/1280,pre_y/1280,9);
ds_grid_set_region(global.world_tiles,pre_x128,pre_y128,pre_x128+9,pre_y128+9,18);
switch(side_check)
{
    case 0:
    {
    ds_grid_set_region(global.world_tiles,pre_x128+2,pre_y128+2,pre_x128+7,pre_y128+7,19);break;
    }
    case 1:
    {
    ds_grid_set_region(global.world_tiles,pre_x128-2,pre_y128+2,pre_x128+7,pre_y128+7,19);break;
    }
    case 2:
    {
    ds_grid_set_region(global.world_tiles,pre_x128+2,pre_y128-2,pre_x128+7,pre_y128+7,19);break;
    }
    case 3:
    {
    ds_grid_set_region(global.world_tiles,pre_x128-2,pre_y128+2,pre_x128+7,pre_y128+11,19);break;
    }
    case 4:
    {
    ds_grid_set_region(global.world_tiles,pre_x128+2,pre_y128+2,pre_x128+11,pre_y128+7,19);break;
    }
}
repeat(100)
{
r_x = round(random_range(1,128));
r_y = round(random_range(1,128));
chance = round(random_range(1,200));
if ( chance > 11 && chance < 16 )
{
inst = instance_create(r_x+i+pre_x,r_y+r+pre_y,objind(obj_ruins_pillar1));
}
if ( chance > 16 && chance < 20 )
{
inst = instance_create(r_x+i+pre_x,r_y+r+pre_y,objind(obj_ai_nomadstalker));
}
if ( chance > 21 && chance < 26 )
{
inst = instance_create(r_x+i+pre_x,r_y+r+pre_y,objind(obj_ai_nomadripper));
}
if ( chance > 5 && chance < 8 )
{
inst = instance_create(r_x+i+pre_x,r_y+r+pre_y,objind(obj_campfire));
inst.is_enabled = true;
}
if ( irandom(100) == 50 )
{
if ( collision_circle(r_x+i+pre_x,r_y+r+pre_y,48,obj_solid_parent,false,true) == noone && collision_circle(r_x+i+pre_x,r_y+r+pre_y,48,obj_detail_parent,false,true) == noone  ){
inst = instance_create(r_x+i+pre_x,r_y+r+pre_y,objind(obj_dead_skeleton1));
if ( instance_exists(inst) ){
inst.image_angle = irandom(360);
inst.treasure_spawn = true;}}
}
    i += 128;
    if ( i > 1280 )
    {
    i = 0;
    r += 128;
    }
}
