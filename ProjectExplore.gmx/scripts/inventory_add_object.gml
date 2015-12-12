/// inventory_add_object(item_id,stack)
var i = 0;var r = 0;var inst = global.v_slot_inst;global.v_slot_inst = 0;

// Check for stackable slots
for(i=0;i<ds_grid_height(c_inv);i++){
for(r=0;r<ds_grid_width(c_inv);r++){
if ( c_inv[#r,i] == argument0 ){
if ( c_stack[#r,i] + argument1 <= global.item_data[#argument0,3] ){
c_stack[#r,i]=c_stack[#r,i]+argument1;
return true;exit;
}}else{
if ( c_inv[#r,i] == 0 ){
c_inv[#r,i]=argument0;
c_stack[#r,i]=argument1;
return true;exit;
}}}}return false;exit;
