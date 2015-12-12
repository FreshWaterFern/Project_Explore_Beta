/// inventory_ini_player();
/* 
This script will create the player inventory.
*/
var view_xcenter = view_wview[0]/2;
var view_ycenter = view_hview[0]/2;
var inst = 0;

// Row 1
inst = instance_create(view_xcenter-144,view_ycenter-42,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;
inst = instance_create(view_xcenter-96,view_ycenter-42,obj_inv_slot);
inst.grid_x=1;inst.grid_y=0;
inst = instance_create(view_xcenter-48,view_ycenter-42,obj_inv_slot);
inst.grid_x=2;inst.grid_y=0;
inst = instance_create(view_xcenter,view_ycenter-42,obj_inv_slot);
inst.grid_x=3;inst.grid_y=0;
inst = instance_create(view_xcenter+48,view_ycenter-42,obj_inv_slot);
inst.grid_x=4;inst.grid_y=0;
inst = instance_create(view_xcenter+96,view_ycenter-42,obj_inv_slot);
inst.grid_x=5;inst.grid_y=0;
inst = instance_create(view_xcenter+144,view_ycenter-42,obj_inv_slot);
inst.grid_x=6;inst.grid_y=0;

// Row 2
inst = instance_create(view_xcenter-144,view_ycenter+6,obj_inv_slot);
inst.grid_x=0;inst.grid_y=1;
inst = instance_create(view_xcenter-96,view_ycenter+6,obj_inv_slot);
inst.grid_x=1;inst.grid_y=1;
inst = instance_create(view_xcenter-48,view_ycenter+6,obj_inv_slot);
inst.grid_x=2;inst.grid_y=1;
inst = instance_create(view_xcenter,view_ycenter+6,obj_inv_slot);
inst.grid_x=3;inst.grid_y=1;
inst = instance_create(view_xcenter+48,view_ycenter+6,obj_inv_slot);
inst.grid_x=4;inst.grid_y=1;
inst = instance_create(view_xcenter+96,view_ycenter+6,obj_inv_slot);
inst.grid_x=5;inst.grid_y=1;
inst = instance_create(view_xcenter+144,view_ycenter+6,obj_inv_slot);
inst.grid_x=6;inst.grid_y=1;

// Row 3
inst = instance_create(view_xcenter-144,view_ycenter+54,obj_inv_slot);
inst.grid_x=0;inst.grid_y=2;
inst = instance_create(view_xcenter-96,view_ycenter+54,obj_inv_slot);
inst.grid_x=1;inst.grid_y=2;
inst = instance_create(view_xcenter-48,view_ycenter+54,obj_inv_slot);
inst.grid_x=2;inst.grid_y=2;
inst = instance_create(view_xcenter,view_ycenter+54,obj_inv_slot);
inst.grid_x=3;inst.grid_y=2;
inst = instance_create(view_xcenter+48,view_ycenter+54,obj_inv_slot);
inst.grid_x=4;inst.grid_y=2;
inst = instance_create(view_xcenter+96,view_ycenter+54,obj_inv_slot);
inst.grid_x=5;inst.grid_y=2;
inst = instance_create(view_xcenter+144,view_ycenter+54,obj_inv_slot);
inst.grid_x=6;inst.grid_y=2;

// Row 4
inst = instance_create(view_xcenter-144,view_ycenter+102,obj_inv_slot);
inst.grid_x=0;inst.grid_y=3;
inst = instance_create(view_xcenter-96,view_ycenter+102,obj_inv_slot);
inst.grid_x=1;inst.grid_y=3;
inst = instance_create(view_xcenter-48,view_ycenter+102,obj_inv_slot);
inst.grid_x=2;inst.grid_y=3;
inst = instance_create(view_xcenter,view_ycenter+102,obj_inv_slot);
inst.grid_x=3;inst.grid_y=3;
inst = instance_create(view_xcenter+48,view_ycenter+102,obj_inv_slot);
inst.grid_x=4;inst.grid_y=3;
inst = instance_create(view_xcenter+96,view_ycenter+102,obj_inv_slot);
inst.grid_x=5;inst.grid_y=3;
inst = instance_create(view_xcenter+144,view_ycenter+102,obj_inv_slot);
inst.grid_x=6;inst.grid_y=3;

// Hotbar
inst = instance_create(view_xcenter-72,view_ycenter+186,obj_inv_slot);
inst.grid_x=0;inst.grid_y=4;
inst = instance_create(view_xcenter-24,view_ycenter+186,obj_inv_slot);
inst.grid_x=1;inst.grid_y=4;
inst = instance_create(view_xcenter+24,view_ycenter+186,obj_inv_slot);
inst.grid_x=2;inst.grid_y=4;
inst = instance_create(view_xcenter+72,view_ycenter+186,obj_inv_slot);
inst.grid_x=3;inst.grid_y=4;

// Clothing
inst = instance_create(view_xcenter-144,view_ycenter-92,obj_inv_slot);
inst.grid_x=4;inst.grid_y=4;
inst = instance_create(view_xcenter-144,view_ycenter-140,obj_inv_slot);
inst.grid_x=5;inst.grid_y=4;
inst = instance_create(view_xcenter-144,view_ycenter-188,obj_inv_slot);
inst.grid_x=6;inst.grid_y=4;

// Update the inventory slots
with(obj_inv_slot){event_user(0)}
