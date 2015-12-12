/// world_get_item(type)
// Type, 0 = resource, 1 = food, 2 = weapon, 3 = storage, 4 = lighting, 5 = stucture, 6 = sanity, 7 = rare drops
var item = 0;
var inst = 0;
switch(argument0)
{
    case 0:
    {
    item = ds_list_find_value(global.c_spawnlist_0,round(irandom(ds_list_size(global.c_spawnlist_0)-1)));
    return item;
    break;
    }
    case 1:
    {
    item = ds_list_find_value(global.c_spawnlist_1,round(irandom(ds_list_size(global.c_spawnlist_1)-1)));
    return item;
    break;
    }
    case 2:
    {
    item = ds_list_find_value(global.c_spawnlist_2,round(irandom(ds_list_size(global.c_spawnlist_2)-1)));
    return item;
    break;
    }
    case 3:
    {
    item = ds_list_find_value(global.c_spawnlist_1,round(irandom(ds_list_size(global.c_spawnlist_1)-1)));;
    return item;
    break;
    }
    case 4:
    {
    item = ds_list_find_value(global.c_spawnlist_4,round(irandom(ds_list_size(global.c_spawnlist_4)-1)));
    return item;
    break;
    }
    case 5:
    {
    item = ds_list_find_value(global.c_spawnlist_5,round(irandom(ds_list_size(global.c_spawnlist_5)-1)));
    return item;
    break;
    }
    case 6:
    {
    item = ds_list_find_value(global.c_spawnlist_6,round(irandom(ds_list_size(global.c_spawnlist_6)-1)));;
    return item;
    break;
    }
    case 7:
    {
    var rare_drop = 5;
    if ( rare_drop == irandom(10) )
    {
    item = ds_list_find_value(global.c_spawnlist_7,round(irandom(ds_list_size(global.c_spawnlist_7)-1)));
    return item;
    }
    break;
    }
    case 8:
    {
    item = ds_list_find_value(global.c_spawnlist_8,round(irandom(ds_list_size(global.c_spawnlist_8)-1)));;
    return item;
    break;
    }
}
