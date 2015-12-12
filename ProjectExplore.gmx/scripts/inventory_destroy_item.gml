/// inventory_destroy_item(grid_x,grid_y,item_id,stack)

if ( object_index == obj_inv_slot ){
if ( other.inv_part == 0 ){
global.c_inventory_pack[#argument0,argument1] = argument2;
global.c_stack_pack[#argument0,argument1] = argument3;
}else{
storage_id.c_inv[#argument0,argument1] = argument2;
storage_id.c_stack[#argument0,argument1] = argument3;
}}
