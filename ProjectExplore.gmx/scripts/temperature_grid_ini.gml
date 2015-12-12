/// temperature_grid_ini()

// -- -- Set Temperature Grid -- -- \\
var t1 = 0;var t2 = 0;var t3 = 0;
var width = (room_width/512)+1;
var height = (room_height/512)+1;
for(t1=0;t1<width;t1++)
{
    for(t2=0;t2<height;t2++)
    {
    t3 = random_range(70,83);
    ds_grid_set(global.world_temperature,t1,t2,t3);
    }
}
