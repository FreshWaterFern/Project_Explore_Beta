/// inventory_get_item(item_id,remove,amount)
if ( argument1 == 0 ){
var i = 0;var r = 0;var item_count = 0;
for(i=0;i<5;i++){
for(r=0;r<7;r++){
if ( global.c_inventory_pack[#r,i] == argument0 ){
item_count += global.c_stack_pack[#r,i];}
}}
return item_count;}

if ( argument1 == 1 ){
var i = 0;var r = 0;var item_count = 0;
for(i=0;i<5;i++){
for(r=0;r<7;r++){
if ( global.c_inventory_pack[#r,i] == argument0 )
{
if ( item_count < argument2 )
{
if ( argument2-item_count >= global.c_stack_pack[#r,i] ){
item_count += global.c_stack_pack[#r,i];
global.c_stack_pack[#r,i] = 0;}
if ( argument2-item_count < global.c_stack_pack[#r,i] ){
global.c_stack_pack[#r,i] = global.c_stack_pack[#r,i]-(argument2-item_count);
item_count += argument2-item_count;}
}else{exit;}

if ( global.c_stack_pack[#r,i] == 0 ){global.c_inventory_pack[#r,i] = 0;}
}}}}

