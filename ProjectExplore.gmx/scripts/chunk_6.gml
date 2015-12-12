/// chunk_6(pre_x,pre_y)

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

ds_grid_set(global.world_biomes,pre_x/1280,pre_y/1280,6);
ds_grid_set_region(global.world_tiles,pre_x128,pre_y128,pre_x128+9,pre_y128+9,10);
ds_grid_set_region(global.world_tiles,pre_x128+2,pre_y128+2,pre_x128+7,pre_y128+7,15);

// Create water tile
for(temp_var0=2;temp_var0<8;temp_var0++)
{
    for(temp_var1=2;temp_var1<8;temp_var1++)
    {
    instance_create((temp_var0+pre_x128)*128,(temp_var1+pre_y128)*128,objind(obj_world_water2));
    }
}
repeat(100)
{
chance = round(random_range(1,10));
if ( chance == 1 )
{
r_x = round(random_range(1,128));
r_y = round(random_range(1,128));
inst = -1;
inst = instance_create(r_x+i+pre_x,r_y+r+pre_y,objind(obj_world_tree_1));
}
r_x = round(random_range(1,128));
r_y = round(random_range(1,128));
scale = choose(0.8,0.9,1.1,1.2,1.3);
chance = round(random_range(1,200));
if ( chance == 2 )
{
inst = instance_create(r_x+i+pre_x,r_y+r+pre_y,objind(obj_world_rock_2));
inst.direction = round(random_range(0,359));
inst.scale_x = scale;
inst.scale_y = scale;
}
if ( chance == 5 )
{
sprite = choose(spr_rock1,spr_rock2);
inst = instance_create(r_x+i+pre_x,r_y+r+pre_y,objind(obj_world_rock_1));
inst.direction = round(random_range(0,359));
inst.sprite_index = sprite;
inst.scale_x = scale;
inst.scale_y = scale;
}
    i += 128;
    if ( i > 1280 )
    {
    i = 0;
    r += 128;
    }
}
