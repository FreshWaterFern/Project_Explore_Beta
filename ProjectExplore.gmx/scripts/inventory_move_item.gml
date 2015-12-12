/// inventory_move_item();
var get_stack0 = 0;var get_id0 = 0;var get_stack1 = 0;var get_id1 = 0;
var did_stack = false;
var inst = global.v_slot_inst;

if ( other.storage_id != 0 ){
world_obj_update(other.storage_id);}

if ( global.v_slot_inst.storage_id != 0 ){
world_obj_update(global.v_slot_inst.storage_id);}

if( other.storage_id != 0 ){var inv_access = other.storage_id;var stack_access = other.storage_id;inv_access = inv_access.c_inv;stack_access = stack_access.c_stack;}
if( inst.storage_id != 0 ){var inv_access = inst.storage_id;var stack_access = inst.storage_id;inv_access = inv_access.c_inv;stack_access = stack_access.c_stack;}

if ( inst.item_id == other.item_id ){ // Check if the two item ids match
if ( inst.item_stack+other.item_stack <= global.item_data[#inst.item_id,3] ){did_stack=true; // If the items can be stacked, clear the original slot
if( inst.storage_id == 0 ){global.c_inventory_pack[#inst.grid_x,inst.grid_y]=0;global.c_stack_pack[#inst.grid_x,inst.grid_y]=0;}
else{global.storage_id.c_inv[#inst.grid_x,inst.grid_y]=0;global.storage_id.c_stack[#inst.grid_x,inst.grid_y]=0;}
if( other.storage_id == 0 ){global.c_stack_pack[#other.grid_x,other.grid_y]=inst.item_stack+other.item_stack;} // Now combine the stacks in the new slot
else{stack_access[#other.grid_x,other.grid_y]=inst.item_stack+other.item_stack;}}}

if ( !did_stack ){ // First we find the item id and stack amount for each slot.
if( inst.storage_id == 0 ){get_id0 = global.c_inventory_pack[#inst.grid_x,inst.grid_y];get_stack0 = global.c_stack_pack[#inst.grid_x,inst.grid_y];}
else{get_id0 = inv_access[#inst.grid_x,inst.grid_y];get_stack0 = stack_access[#inst.grid_x,inst.grid_y];}
if( other.storage_id == 0 ){get_id1 = global.c_inventory_pack[#other.grid_x,other.grid_y];get_stack1 = global.c_stack_pack[#other.grid_x,other.grid_y];}
else{get_id1 = inv_access[#other.grid_x,other.grid_y];get_stack1 = stack_access[#other.grid_x,other.grid_y];}
// Now we swap their item ids and stack amounts.
if( inst.storage_id == 0 ){global.c_inventory_pack[#inst.grid_x,inst.grid_y] = get_id1;global.c_stack_pack[#inst.grid_x,inst.grid_y] = get_stack1;}
else{inv_access[#inst.grid_x,inst.grid_y] = get_id1;stack_access[#inst.grid_x,inst.grid_y] = get_stack1;}
if( other.storage_id == 0 ){global.c_inventory_pack[#other.grid_x,other.grid_y] = get_id0;global.c_stack_pack[#other.grid_x,other.grid_y] = get_stack0;}
else{inv_access[#other.grid_x,other.grid_y] = get_id0;stack_access[#other.grid_x,other.grid_y] = get_stack0;}}
