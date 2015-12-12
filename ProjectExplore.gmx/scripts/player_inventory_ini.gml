/// player_inventory_ini()

global.v_item_drop = false;
global.v_slot_x = 0;
global.v_slot_y = 0;
global.v_slot_inst = 0;
global.v_slot_item_id = 0;
global.v_item_moving = false;
global.v_item_stack = 0;
global.c_inventory_pack = ds_grid_create(7,5);
global.c_stack_pack = ds_grid_create(7,5);
global.storage_id = 0;
global.storage_type = 0;
