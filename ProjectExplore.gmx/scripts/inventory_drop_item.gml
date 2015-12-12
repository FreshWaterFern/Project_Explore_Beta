/// inventory_drop_item(grid_x,grid_y,slot_part)
// slot_part, 0 = player, 3 = external
switch(argument2)
{
    case 0:
    {
    var item = 0;var stack = 0;var inst = 0;
    item = global.c_inventory_pack[#argument0,argument1];
    stack = global.c_stack_pack[#argument0,argument1];
    global.c_inventory_pack[#argument0,argument1] = 0;
    global.c_stack_pack[#argument0,argument1] = 0;
    inst = instance_create(obj_player.x,obj_player.y,obj_item_dropped);
    inst.item_id = item;inst.item_stack = stack;
    world_obj_add(inst);
    break;
    }
    case 3:
    {
    var item = 0;var stack = 0;var inst = 0;
    item = storage_id.c_inv[#argument0,argument1];
    stack = storage_id.c_stack[#argument0,argument1];
    storage_id.c_inv[#argument0,argument1] = 0;
    storage_id.c_stack[#argument0,argument1] = 0;
    inst = instance_create(obj_player.x,obj_player.y,obj_item_dropped);
    inst.item_id = item;inst.item_stack = stack;
    world_obj_add(inst);
    break;
    }
}
