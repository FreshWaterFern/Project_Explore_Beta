/// inventory_add(item_id,stack,splitting)
var i = 0;var r = 0;var inst = global.v_slot_inst;global.v_slot_inst = 0;

if ( argument2 == false ){
// Check for stackable slots
for(i=0;i<5;i++){
for(r=0;r<7;r++){
if ( global.c_inventory_pack[#r,i] == argument0 ){
if ( global.c_stack_pack[#r,i] + argument1 <= global.item_data[#argument0,3] ){
global.c_stack_pack[#r,i]=global.c_stack_pack[#r,i]+argument1;
return true;exit;
}}else{
if ( global.c_inventory_pack[#r,i] == 0 ){
global.c_inventory_pack[#r,i]=argument0;
global.c_stack_pack[#r,i]=argument1;
return true;exit;
}}}}
if ( object_index == obj_inv_slot ){
if ( storage_id != 0 ){
for(i=0;i<ds_grid_height(storage_id.c_inv);i++){
for(r=0;r<ds_grid_width(storage_id.c_inv);r++){
if ( storage_id.c_inv[#r,i] == argument0 ){
if ( storage_id.c_stack[#r,i] + argument1 <= global.item_data[#argument0,3] ){
storage_id.c_stack[#r,i]=storage_id.c_stack[#r,i]+argument1;
return true;exit;
}}}}}}}else{
var looped = false;var start_x = inst.grid_x;var start_inv = inv_part;
// Check for stackable slots nearest to the slot towards the right
if ( other.inv_part != 3 ){
for(i=inst.grid_y;i<5;i++){
for(r=start_x;r<7;r++){
if ( global.c_inventory_pack[#r,i] == 0 ){
global.c_inventory_pack[#r,i]=argument0;
global.c_stack_pack[#r,i]=argument1;
return true;exit;
}}start_x = 0;}
}else{
if ( object_index == obj_inv_slot ){
if ( storage_id != 0 ){start_x = inst.grid_x;
for(i=inst.grid_y;i<ds_grid_height(storage_id.c_inv);i++){
for(r=start_x;r<ds_grid_width(storage_id.c_inv);r++){
if ( storage_id.c_inv[#r,i] == 0 ){
storage_id.c_inv[#r,i] = argument0;
storage_id.c_stack[#r,i] = argument1;
return true;exit;
}}start_x = 0;}}}}

// If there were no slots found, then we will reset the search from 0,0
for(i=0;i<5;i++){
for(r=0;r<7;r++){
if ( global.c_inventory_pack[#r,i] == 0 ){
global.c_inventory_pack[#r,i]=argument0;
global.c_stack_pack[#r,i]=argument1;
return true;exit;
}}}
if ( object_index == obj_inv_slot ){
if ( storage_id != 0 ){
for(i=0;i<ds_grid_height(storage_id.c_inv);i++){
for(r=0;r<ds_grid_width(storage_id.c_inv);r++){
if ( storage_id.c_inv[#r,i] == 0 ){
storage_id.c_inv[#r,i] = argument0;
storage_id.c_stack[#r,i] = argument1;
return true;exit;
}}}}}}

return false;
