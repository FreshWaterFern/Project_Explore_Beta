/// scr_cooking_OutOfFuel()
var i = 0;var r = 0;var test = true;
for(i=0;i<ds_grid_height(c_inv);i++){
for(r=0;r<ds_grid_width(c_inv);r++){
if ( c_inv[#r,i] > 0 ){
if ( ds_list_find_index(fuel_item,global.item_data[#c_inv[#r,i],0]) == -1 ){
test = true;}else{test = false;i=9999;r=9999;}
}}}
return test;
