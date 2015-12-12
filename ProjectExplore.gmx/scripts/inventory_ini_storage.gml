/// inventory_ini_storage(width,height,grid_inv,grid_stack)
/* 
This script will create inventory boxes to represent
the storage grid present in the calling object. Some rules apply.
The inventory grid must be named 'c_inv'
The stack grid must be named 'c_stack'
*/

var x_base = (view_wview[0]/2)-408;
var y_base = ((view_hview[0]/2)-42)-((argument1*48)-144);
var inst = 0;var row_x = 0;var row_y = 0;

inst = instance_create(x,y,obj_inv_itemsearch);
inst.search_disable = true;

switch(argument0){
case 2:{x_base-=24;break;}
case 3:{x_base-=48;break;}
case 4:{x_base-=64;break;}
case 5:{x_base-=96;break;}
case 6:{x_base-=112;break;}
case 7:{x_base-=144;break;}
case 8:{x_base-=160;break;}
}

for(row_y=0;row_y<argument1;row_y++;){
for(row_x=0;row_x<argument0;row_x++;){
inst = instance_create(x_base+(48*row_x),y_base+(48*row_y),obj_inv_slot);inst.grid_x=row_x;inst.grid_y=row_y;inst.inv_part=3;inst.storage_id=id;}row_x=0;}

var offset=0;if(is_even(argument0) && argument0 > 1 ){offset=-24}
inst = instance_create(x_base+(48*(argument0 div 2))+offset,y_base+(48*row_y),obj_inv_takeall);inst.width=argument0;inst.height=argument1;inst.grid_inv=argument2;inst.grid_stack=argument3;inst.obj_id=other.id;
//with(inst){width=other.argument0;height=other.argument1;grid_inv=other.argument2;grid_stack=other.argument3;obj_id=other.id;}

// Update the inventory slots
with(obj_inv_slot){event_user(0)}
