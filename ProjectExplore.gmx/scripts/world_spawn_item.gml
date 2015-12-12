/// world_spawn_item(x,y,type,stack)
// Type, 0 = resource, 1 = food, 2 = weapon, 3 = storage, 4 = lighting, 5 = stucture, 6 = sanity, 7 = rare drops
var item = 0;
var inst = 0;
switch(argument2)
{
    case 0:
    {
    item = ds_list_find_value(global.c_spawnlist_0,round(random_range(0,ds_list_size(global.c_spawnlist_0)-1)));
    inst = instance_create(argument0,argument1,objind(obj_item_dropped));
    inst.item_id=item;inst.item_stack=argument3;
    break;
    }
    case 1:
    {
    item = ds_list_find_value(global.c_spawnlist_1,round(random_range(0,ds_list_size(global.c_spawnlist_1)-1)));
    inst = instance_create(argument0,argument1,objind(obj_item_dropped));
    inst.item_id=item;inst.item_stack=argument3;
    break;
    }
    case 2:
    {
    item = ds_list_find_value(global.c_spawnlist_2,round(random_range(0,ds_list_size(global.c_spawnlist_2)-1)));
    inst = instance_create(argument0,argument1,objind(obj_item_dropped));
    inst.item_id=item;inst.item_stack=argument3;
    break;
    }
    case 3:
    {
    item = ds_list_find_value(global.c_spawnlist_1,round(random_range(0,ds_list_size(global.c_spawnlist_1)-1)));
    inst = instance_create(argument0,argument1,objind(obj_item_dropped));
    inst.item_id=item;inst.item_stack=argument3;
    break;
    }
    case 4:
    {
    item = ds_list_find_value(global.c_spawnlist_4,round(random_range(0,ds_list_size(global.c_spawnlist_4)-1)));
    inst = instance_create(argument0,argument1,objind(obj_item_dropped));
    inst.item_id=item;inst.item_stack=argument3;
    break;
    }
    case 5:
    {
    item = ds_list_find_value(global.c_spawnlist_5,round(random_range(0,ds_list_size(global.c_spawnlist_5)-1)));
    inst = instance_create(argument0,argument1,objind(obj_item_dropped));
    inst.item_id=item;inst.item_stack=argument3;
    break;
    }
    case 6:
    {
    item = ds_list_find_value(global.c_spawnlist_6,round(random_range(0,ds_list_size(global.c_spawnlist_6)-1)));
    inst = instance_create(argument0,argument1,objind(obj_item_dropped));
    inst.item_id=item;inst.item_stack=argument3;
    break;
    }
    case 7:
    {
    var rare_drop = 0;
    if ( rare_drop == choose(0,1,2,3,80,82) )
    {
    item = ds_list_find_value(global.c_spawnlist_7,round(random_range(0,ds_list_size(global.c_spawnlist_7)-1)));
    inst = instance_create(argument0,argument1,objind(obj_item_dropped));
    inst.item_id=item;inst.item_stack=argument3;
    }
    break;
    }
    case 8:
    {
    item = ds_list_find_value(global.c_spawnlist_8,round(random_range(0,ds_list_size(global.c_spawnlist_8)-1)));
    inst = instance_create(argument0,argument1,objind(obj_item_dropped));
    inst.item_id=item;inst.item_stack=argument3;
    break;
    }
}
