/// world_structures(x,y,structure);
var world_x = argument0*128;
var world_y = argument1*128;
var inst = 0;
var door_set = 0;
var temp_var = 0;
var safe_list = ds_list_create();
var i = 0;var r = 0;
//var poop = argument2
//switch(argument2)
if ( world_x > 512 && world_x < room_width-512 && world_y > 512 && world_y < room_height-512 ){
switch(argument2)
{
    case 0: // Mid-Size Brick Home
    {
        // Ground
        ds_grid_set_region(global.world_tiles,argument0-2,argument1,argument0+2,argument1+2,2);
        // Walls
        door_set = choose(0,1,2,3);
        // Left Side
        inst=instance_create(world_x-320,world_y,objind(obj_brick_wall));inst.image_angle=90;
        if ( door_set == 0 )
        {
        inst=instance_create(world_x-320,world_y+128,objind(obj_brick_doorway));inst.image_angle=90;
        inst=instance_create(world_x-320,world_y+103,objind(obj_construct_door));inst.image_angle=90;inst.door_construct=0;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x-320,world_y+128,objind(obj_brick_wall));inst.image_angle=90;
        }
        inst=instance_create(world_x-320,world_y+256,objind(obj_brick_wall));inst.image_angle=90;
        // Right Side
        inst=instance_create(world_x+320,world_y,objind(obj_brick_wall));inst.image_angle=90;
        if ( door_set == 1 )
        {
        inst=instance_create(world_x+320,world_y+128,objind(obj_brick_doorway));inst.image_angle=90;
        inst=instance_create(world_x+320,world_y+103,objind(obj_construct_door));inst.image_angle=90;inst.door_construct=0;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x+320,world_y+128,objind(obj_brick_wall));inst.image_angle=90;
        }
        inst=instance_create(world_x+320,world_y+256,objind(obj_brick_wall));inst.image_angle=90;
        // Up Side
        inst=instance_create(world_x-256,world_y-64,objind(obj_brick_wall));
        inst=instance_create(world_x-128,world_y-64,objind(obj_brick_wall));
        if ( door_set == 2 )
        {
        inst=instance_create(world_x,world_y-64,objind(obj_brick_doorway));
        inst=instance_create(world_x-25,world_y-64,objind(obj_construct_door));inst.door_construct=0;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x,world_y-64,objind(obj_brick_wall));
        }
        inst=instance_create(world_x+128,world_y-64,objind(obj_brick_wall));
        inst=instance_create(world_x+256,world_y-64,objind(obj_brick_wall));
        // Down Side
        inst=instance_create(world_x-256,world_y+320,objind(obj_brick_wall));
        inst=instance_create(world_x-128,world_y+320,objind(obj_brick_wall));
        if ( door_set == 3 )
        {
        inst=instance_create(world_x,world_y+320,objind(obj_brick_doorway));
        inst=instance_create(world_x-25,world_y+320,objind(obj_construct_door));inst.door_construct=0;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x,world_y+320,objind(obj_brick_wall));
        }
        inst=instance_create(world_x+128,world_y+320,objind(obj_brick_wall));
        inst=instance_create(world_x+256,world_y+320,objind(obj_brick_wall));
        // Ceiling
        repeat(5)
        {inst=instance_create(world_x-256+temp_var,world_y,objind(obj_plaster_ceiling));ds_list_add(safe_list,inst);temp_var += 128;}temp_var = 0;
        repeat(5)
        {inst=instance_create(world_x-256+temp_var,world_y+128,objind(obj_plaster_ceiling));ds_list_add(safe_list,inst);temp_var += 128;}temp_var = 0;
        repeat(5)
        {inst=instance_create(world_x-256+temp_var,world_y+256,objind(obj_plaster_ceiling));ds_list_add(safe_list,inst);temp_var += 128;}temp_var = 0;
        // Items
        temp_var = choose(0,1);
        if ( temp_var == 0 ){world_spawn_item(choose(world_x-200,world_x,world_x+200),choose(world_y,world_y+100,world_y+200),irandom(8),irandom(3)+1);}
        temp_var = choose(0,1);
        if ( temp_var == 0 ){world_spawn_item(choose(world_x-200,world_x,world_x+200),choose(world_y,world_y+100,world_y+200),irandom(8),irandom(3)+1);}
        // Clear Objects In The Way
        for(i=0;i<ds_list_size(safe_list)-1;i++){r=i;while(r==i){r++;
        inst = collision_rectangle(safe_list[| i].x-64,safe_list[| i].y-64,safe_list[| i].x+64,safe_list[| i].y+64,obj_solid_parent,false,true);
        if ( inst != noone ){
        if ( inst.object_index == obj_world_tree_1 or inst.object_index == obj_world_rock_1 or inst.object_index == obj_world_rock_2 )
        {with(inst){instance_destroy();r--;}}}}}
        ds_list_clear(safe_list);
        break;
    }
    
    case 1: // Small-Size Brick Home
    {
        // Ground
        ds_grid_set_region(global.world_tiles,argument0,argument1,argument0+1,argument1+1,2);
        // Walls
        door_set = choose(0,1,2,3);
        // Left Side
        inst=instance_create(world_x-64,world_y,objind(obj_brick_wall));inst.image_angle=90;
        if ( door_set == 0 )
        {
        inst=instance_create(world_x-64,world_y+128,objind(obj_brick_doorway));inst.image_angle=90;
        inst=instance_create(world_x-64,world_y+103,objind(obj_construct_door));inst.image_angle=90;inst.door_construct=0;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x-64,world_y+128,objind(obj_brick_wall));inst.image_angle=90;
        }
        // Right Side
        inst=instance_create(world_x+192,world_y,objind(obj_brick_wall));inst.image_angle=90;
        if ( door_set == 1 )
        {
        inst=instance_create(world_x+192,world_y+128,objind(obj_brick_doorway));inst.image_angle=90;
        inst=instance_create(world_x+192,world_y+103,objind(obj_construct_door));inst.image_angle=90;inst.door_construct=0;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x+192,world_y+128,objind(obj_brick_wall));inst.image_angle=90;
        }
        // Up Side
        inst=instance_create(world_x,world_y-64,objind(obj_brick_wall));
        if ( door_set == 2 )
        {
        inst=instance_create(world_x+128,world_y-64,objind(obj_brick_doorway));
        inst=instance_create(world_x+103,world_y-64,objind(obj_construct_door));inst.door_construct=0;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x+128,world_y-64,objind(obj_brick_wall));
        }
        // Down Side
        inst=instance_create(world_x,world_y+192,objind(obj_brick_wall));
        if ( door_set == 3 )
        {
        inst=instance_create(world_x+128,world_y+192,objind(obj_brick_doorway));
        inst=instance_create(world_x+103,world_y+192,objind(obj_construct_door));inst.door_construct=0;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x+128,world_y+192,objind(obj_brick_wall));
        }
        // Ceiling
        inst=instance_create(world_x,world_y,objind(obj_plaster_ceiling));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+128,world_y,objind(obj_plaster_ceiling));ds_list_add(safe_list,inst);
        inst=instance_create(world_x,world_y+128,objind(obj_plaster_ceiling));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+128,world_y+128,objind(obj_plaster_ceiling));ds_list_add(safe_list,inst);
        // Items
        temp_var = choose(0,1);
        if ( temp_var == 0 ){world_spawn_item(choose(world_x-32,world_x,world_x+160),choose(world_y,world_y-32,world_y+160),irandom(8),irandom(3)+1);}
        temp_var = choose(0,1);
        if ( temp_var == 0 ){world_spawn_item(choose(world_x-32,world_x,world_x+160),choose(world_y,world_y-32,world_y+160),irandom(8),irandom(3)+1);}
        // Clear Objects In The Way
        for(i=0;i<ds_list_size(safe_list)-1;i++){r=i;while(r==i){r++;
        inst = collision_rectangle(safe_list[| i].x-64,safe_list[| i].y-64,safe_list[| i].x+64,safe_list[| i].y+64,obj_solid_parent,false,true);
        if ( inst != noone ){
        if ( inst.object_index == obj_world_tree_1 or inst.object_index == obj_world_rock_1 or inst.object_index == obj_world_rock_2 )
        {with(inst){instance_destroy();r--;}}}}}
        ds_list_clear(safe_list);
        break;
    }
    
    case 2: // Small-Size Wood Home
    {
        // Ground
        ds_grid_set_region(global.world_tiles,argument0,argument1,argument0+1,argument1+1,8);
        // Walls
        door_set = choose(0,1,2,3);
        // Left Side
        inst=instance_create(world_x-64,world_y,objind(obj_wood_wall1));inst.image_angle=90;
        if ( door_set == 0 )
        {
        inst=instance_create(world_x-64,world_y+128,objind(obj_wood_doorway1));inst.image_angle=90;
        inst=instance_create(world_x-64,world_y+103,objind(obj_construct_door));inst.image_angle=90;inst.door_construct=0;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x-64,world_y+128,objind(obj_wood_wall1));inst.image_angle=90;
        }
        // Right Side
        inst=instance_create(world_x+192,world_y,objind(obj_wood_wall1));inst.image_angle=90;
        if ( door_set == 1 )
        {
        inst=instance_create(world_x+192,world_y+128,objind(obj_wood_doorway1));inst.image_angle=90;
        inst=instance_create(world_x+192,world_y+103,objind(obj_construct_door));inst.image_angle=90;inst.door_construct=0;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x+192,world_y+128,objind(obj_wood_wall1));inst.image_angle=90;
        }
        // Up Side
        inst=instance_create(world_x,world_y-64,objind(obj_wood_wall1));
        if ( door_set == 2 )
        {
        inst=instance_create(world_x+128,world_y-64,objind(obj_wood_doorway1));
        inst=instance_create(world_x+103,world_y-64,objind(obj_construct_door));inst.door_construct=0;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x+128,world_y-64,objind(obj_wood_wall1));
        }
        // Down Side
        inst=instance_create(world_x,world_y+192,objind(obj_wood_wall1));
        if ( door_set == 3 )
        {
        inst=instance_create(world_x+128,world_y+192,objind(obj_wood_doorway1));
        inst=instance_create(world_x+103,world_y+192,objind(obj_construct_door));inst.door_construct=0;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x+128,world_y+192,objind(obj_wood_wall1));
        }
        // Ceiling
        inst=instance_create(world_x,world_y,objind(obj_wood_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+128,world_y,objind(obj_wood_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x,world_y+128,objind(obj_wood_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+128,world_y+128,objind(obj_wood_ceiling1));ds_list_add(safe_list,inst);
        // Items
        temp_var = choose(0,1);
        if ( temp_var == 0 ){world_spawn_item(choose(world_x-32,world_x,world_x+160),choose(world_y,world_y-32,world_y+160),irandom(8),irandom(3)+1);}
        temp_var = choose(0,1);
        if ( temp_var == 0 ){world_spawn_item(choose(world_x-32,world_x,world_x+160),choose(world_y,world_y-32,world_y+160),irandom(8),irandom(3)+1);}
        // Clear Objects In The Way
        for(i=0;i<ds_list_size(safe_list)-1;i++){r=i;while(r==i){r++;
        inst = collision_rectangle(safe_list[| i].x-64,safe_list[| i].y-64,safe_list[| i].x+64,safe_list[| i].y+64,obj_solid_parent,false,true);
        if ( inst != noone ){
        if ( inst.object_index == obj_world_tree_1 or inst.object_index == obj_world_rock_1 or inst.object_index == obj_world_rock_2 )
        {with(inst){instance_destroy();r--;}}}}}
        ds_list_clear(safe_list);
        break;
    }
    
    case 3: // Medium-Size Brick Home 2
    {
        // Ground
        ds_grid_set_region(global.world_tiles,argument0,argument1,argument0+1,argument1,8);
        ds_grid_set_region(global.world_tiles,argument0+1,argument1+1,argument0+3,argument1+2,8);
        // Walls
        door_set = choose(0,1);
        // Left Side
        if ( door_set == 0 )
        {
        inst=instance_create(world_x-64,world_y,objind(obj_brick_doorway));inst.image_angle=90;
        inst=instance_create(world_x-64,world_y-25,objind(obj_construct_door));inst.image_angle=90;inst.door_construct=0;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x-64,world_y,objind(obj_brick_wall));inst.image_angle=90;
        }
        inst=instance_create(world_x+64,world_y+128,objind(obj_brick_wall));inst.image_angle=90;
        inst=instance_create(world_x+64,world_y+256,objind(obj_brick_wall));inst.image_angle=90;
        // Right Side
        inst=instance_create(world_x+192,world_y,objind(obj_brick_wall));inst.image_angle=90;
        inst=instance_create(world_x+448,world_y+128,objind(obj_brick_wall));inst.image_angle=90;
        inst=instance_create(world_x+448,world_y+256,objind(obj_brick_wall));inst.image_angle=90;
        // Up Side
        inst=instance_create(world_x,world_y-64,objind(obj_brick_wall));
        inst=instance_create(world_x+128,world_y-64,objind(obj_brick_wall));
        inst=instance_create(world_x+256,world_y+64,objind(obj_brick_wall));
        inst=instance_create(world_x+384,world_y+64,objind(obj_brick_wall));
        // Down Side
        inst=instance_create(world_x,world_y+64,objind(obj_brick_wall));
        inst=instance_create(world_x+128,world_y+320,objind(obj_brick_wall));
        if ( door_set == 1 )
        {
        inst=instance_create(world_x+256,world_y+320,objind(obj_brick_doorway));
        inst=instance_create(world_x+231,world_y+320,objind(obj_construct_door));inst.door_construct=0;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x+256,world_y+320,objind(obj_brick_wall));
        }
        inst=instance_create(world_x+384,world_y+320,objind(obj_brick_wall));
        // Ceiling
        inst=instance_create(world_x,world_y,objind(obj_wood_ceiling1));
        inst=instance_create(world_x+128,world_y,objind(obj_wood_ceiling1));
        inst=instance_create(world_x+128,world_y+128,objind(obj_wood_ceiling1));
        inst=instance_create(world_x+256,world_y+128,objind(obj_wood_ceiling1));
        inst=instance_create(world_x+384,world_y+128,objind(obj_wood_ceiling1));
        inst=instance_create(world_x+128,world_y+256,objind(obj_wood_ceiling1));
        inst=instance_create(world_x+256,world_y+256,objind(obj_wood_ceiling1));
        inst=instance_create(world_x+384,world_y+256,objind(obj_wood_ceiling1));
        // Items
        temp_var = choose(0,1);
        if ( temp_var == 0 ){world_spawn_item(world_x+224,world_y+256,irandom(8),irandom(3)+1);}
        temp_var = choose(0,1);
        if ( temp_var == 0 ){world_spawn_item(world_x+300,world_y+256,irandom(8),irandom(3)+1);}
        // Clear Objects In The Way
        for(i=0;i<ds_list_size(safe_list)-1;i++){r=i;while(r==i){r++;
        inst = collision_rectangle(safe_list[| i].x-64,safe_list[| i].y-64,safe_list[| i].x+64,safe_list[| i].y+64,obj_solid_parent,false,true);
        if ( inst != noone ){
        if ( inst.object_index == obj_world_tree_1 or inst.object_index == obj_world_rock_1 or inst.object_index == obj_world_rock_2 )
        {with(inst){instance_destroy();r--;}}}}}
        ds_list_clear(safe_list);
        break;
    }
    
    case 4: // Medium-Size Wood Home 2
    {
        // Ground
        ds_grid_set_region(global.world_tiles,argument0,argument1,argument0+1,argument1,8);
        ds_grid_set_region(global.world_tiles,argument0+1,argument1+1,argument0+3,argument1+2,8);
        // Walls
        door_set = choose(0,1);
        // Left Side
        if ( door_set == 0 )
        {
        inst=instance_create(world_x-64,world_y,objind(obj_wood_doorway1));inst.image_angle=90;
        inst=instance_create(world_x-64,world_y-25,objind(obj_construct_door));inst.door_construct=0;inst.image_angle=90;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x-64,world_y,objind(obj_wood_wall1));inst.image_angle=90;
        }
        inst=instance_create(world_x+64,world_y+128,objind(obj_wood_wall1));inst.image_angle=90;
        inst=instance_create(world_x+64,world_y+256,objind(obj_wood_wall1));inst.image_angle=90;
        // Right Side
        inst=instance_create(world_x+192,world_y,objind(obj_wood_wall1));inst.image_angle=90;
        inst=instance_create(world_x+448,world_y+128,objind(obj_wood_wall1));inst.image_angle=90;
        inst=instance_create(world_x+448,world_y+256,objind(obj_wood_wall1));inst.image_angle=90;
        // Up Side
        inst=instance_create(world_x,world_y-64,objind(obj_wood_wall1));
        inst=instance_create(world_x+128,world_y-64,objind(obj_wood_wall1));
        inst=instance_create(world_x+256,world_y+64,objind(obj_wood_wall1));
        inst=instance_create(world_x+384,world_y+64,objind(obj_wood_wall1));
        // Down Side
        inst=instance_create(world_x,world_y+64,objind(obj_wood_wall1));
        inst=instance_create(world_x+128,world_y+320,objind(obj_wood_wall1));
        if ( door_set == 1 )
        {
        inst=instance_create(world_x+256,world_y+320,objind(obj_wood_doorway1));
        inst=instance_create(world_x+231,world_y+320,objind(obj_construct_door));inst.door_construct=0;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x+256,world_y+320,objind(obj_wood_wall1));
        }
        inst=instance_create(world_x+384,world_y+320,objind(obj_wood_wall1));
        // Ceiling
        inst=instance_create(world_x,world_y,objind(obj_wood_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+128,world_y,objind(obj_wood_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+128,world_y+128,objind(obj_wood_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+256,world_y+128,objind(obj_wood_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+384,world_y+128,objind(obj_wood_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+128,world_y+256,objind(obj_wood_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+256,world_y+256,objind(obj_wood_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+384,world_y+256,objind(obj_wood_ceiling1));ds_list_add(safe_list,inst);
        // Items
        temp_var = choose(0,1);
        if ( temp_var == 0 ){world_spawn_item(world_x+224,world_y+256,choose(0,1,2,3,4,5,6),irandom(8));}
        temp_var = choose(0,1);
        if ( temp_var == 0 ){world_spawn_item(world_x+300,world_y+256,choose(0,1,2,3,4,5,6),irandom(8));}
        // Clear Objects In The Way
        for(i=0;i<ds_list_size(safe_list)-1;i++){r=i;while(r==i){r++;
        inst = collision_rectangle(safe_list[| i].x-64,safe_list[| i].y-64,safe_list[| i].x+64,safe_list[| i].y+64,obj_solid_parent,false,true);
        if ( inst != noone ){
        if ( inst.object_index == obj_world_tree_1 or inst.object_index == obj_world_rock_1 or inst.object_index == obj_world_rock_2 )
        {with(inst){instance_destroy();r--;}}}}}
        ds_list_clear(safe_list);
        break;
    }
    
    case 5: // Medium-Size Sand Home 1
    {
        // Ground
        ds_grid_set_region(global.world_tiles,argument0,argument1,argument0+1,argument1,16);
        ds_grid_set_region(global.world_tiles,argument0+1,argument1+1,argument0+3,argument1+2,16);
        // Walls
        door_set = choose(0,1);
        // Left Side
        if ( door_set == 0 )
        {
        inst=instance_create(world_x-64,world_y,objind(obj_sand_doorway1));inst.image_angle=90;
        inst=instance_create(world_x-64,world_y-25,objind(obj_construct_door));inst.image_angle=90;inst.door_construct=0;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x-64,world_y,objind(obj_sand_wall1));inst.image_angle=90;
        }
        inst=instance_create(world_x+64,world_y+128,objind(obj_sand_wall1));inst.image_angle=90;
        inst=instance_create(world_x+64,world_y+256,objind(obj_sand_wall1));inst.image_angle=90;
        // Right Side
        inst=instance_create(world_x+192,world_y,objind(obj_sand_wall1));inst.image_angle=90;
        inst=instance_create(world_x+448,world_y+128,objind(obj_sand_wall1));inst.image_angle=90;
        inst=instance_create(world_x+448,world_y+256,objind(obj_sand_wall1));inst.image_angle=90;
        // Up Side
        inst=instance_create(world_x,world_y-64,objind(obj_sand_wall1));
        inst=instance_create(world_x+128,world_y-64,objind(obj_sand_wall1));
        inst=instance_create(world_x+256,world_y+64,objind(obj_sand_wall1));
        inst=instance_create(world_x+384,world_y+64,objind(obj_sand_wall1));
        // Down Side
        inst=instance_create(world_x,world_y+64,objind(obj_sand_wall1));
        inst=instance_create(world_x+128,world_y+320,objind(obj_sand_wall1));
        if ( door_set == 1 )
        {
        inst=instance_create(world_x+256,world_y+320,objind(obj_sand_doorway1));
        inst=instance_create(world_x+231,world_y+320,objind(obj_construct_door));inst.door_construct=0;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x+256,world_y+320,objind(obj_sand_wall1));
        }
        inst=instance_create(world_x+384,world_y+320,objind(obj_sand_wall1));
        // Ceiling
        inst=instance_create(world_x,world_y,objind(obj_sand_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+128,world_y,objind(obj_sand_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+128,world_y+128,objind(obj_sand_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+256,world_y+128,objind(obj_sand_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+384,world_y+128,objind(obj_sand_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+128,world_y+256,objind(obj_sand_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+256,world_y+256,objind(obj_sand_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+384,world_y+256,objind(obj_sand_ceiling1));ds_list_add(safe_list,inst);
        // Items
        temp_var = choose(0,1);
        if ( temp_var == 0 ){world_spawn_item(world_x+224,world_y+256,choose(0,1,2,3,4,5,6),irandom(8));}
        temp_var = choose(0,1);
        if ( temp_var == 0 ){world_spawn_item(world_x+300,world_y+256,choose(0,1,2,3,4,5,6),irandom(8));}
        // Clear Objects In The Way
        for(i=0;i<ds_list_size(safe_list)-1;i++){r=i;while(r==i){r++;
        inst = collision_rectangle(safe_list[| i].x-64,safe_list[| i].y-64,safe_list[| i].x+64,safe_list[| i].y+64,obj_solid_parent,false,true);
        if ( inst != noone ){
        if ( inst.object_index == obj_world_tree_1 or inst.object_index == obj_world_rock_1 or inst.object_index == obj_world_rock_2 )
        {with(inst){instance_destroy();r--;}}}}}
        ds_list_clear(safe_list);
        break;
    }
    
    case 6: // Small-Size Sand Home
    {
        // Ground
        ds_grid_set_region(global.world_tiles,argument0,argument1,argument0+1,argument1+1,16);
        // Walls
        door_set = choose(0,1,2,3);
        // Left Side
        inst=instance_create(world_x-64,world_y,objind(obj_sand_wall1));inst.image_angle=90;
        if ( door_set == 0 )
        {
        inst=instance_create(world_x-64,world_y+128,objind(obj_sand_doorway1));inst.image_angle=90;
        inst=instance_create(world_x-64,world_y+103,objind(obj_construct_door));inst.image_angle=90;inst.door_construct=0;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x-64,world_y+128,objind(obj_sand_wall1));inst.image_angle=90;
        }
        // Right Side
        inst=instance_create(world_x+192,world_y,objind(obj_sand_wall1));inst.image_angle=90;
        if ( door_set == 1 )
        {
        inst=instance_create(world_x+192,world_y+128,objind(obj_sand_doorway1));inst.image_angle=90;
        inst=instance_create(world_x+192,world_y+103,objind(obj_construct_door));inst.image_angle=90;inst.door_construct=0;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x+192,world_y+128,objind(obj_sand_wall1));inst.image_angle=90;
        }
        // Up Side
        inst=instance_create(world_x,world_y-64,objind(obj_sand_wall1));
        if ( door_set == 2 )
        {
        inst=instance_create(world_x+128,world_y-64,objind(obj_sand_doorway1));
        inst=instance_create(world_x+103,world_y-64,objind(obj_construct_door));inst.door_construct=0;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x+128,world_y-64,objind(obj_sand_wall1));
        }
        // Down Side
        inst=instance_create(world_x,world_y+192,objind(obj_sand_wall1));
        if ( door_set == 3 )
        {
        inst=instance_create(world_x+128,world_y+192,objind(obj_sand_doorway1));
        inst=instance_create(world_x+103,world_y+192,objind(obj_construct_door));inst.door_construct=0;
        chance=choose(0,1,2,3,4,5,6,7,8,9);if(chance==5){inst.door_locked=1;}
        }
        else
        {
        inst=instance_create(world_x+128,world_y+192,objind(obj_sand_wall1));
        }
        // Ceiling
        inst=instance_create(world_x,world_y,objind(obj_sand_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+128,world_y,objind(obj_sand_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x,world_y+128,objind(obj_sand_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+128,world_y+128,objind(obj_sand_ceiling1));ds_list_add(safe_list,inst);
        // Items
        temp_var = choose(0,1);
        if ( temp_var == 0 ){world_spawn_item(choose(world_x-32,world_x,world_x+160),choose(world_y,world_y-32,world_y+160),irandom(8),irandom(3)+1);}
        temp_var = choose(0,1);
        if ( temp_var == 0 ){world_spawn_item(choose(world_x-32,world_x,world_x+160),choose(world_y,world_y-32,world_y+160),irandom(8),irandom(3)+1);}
        // Clear Objects In The Way
        for(i=0;i<ds_list_size(safe_list)-1;i++){r=i;while(r==i){r++;
        inst = collision_rectangle(safe_list[| i].x-64,safe_list[| i].y-64,safe_list[| i].x+64,safe_list[| i].y+64,obj_solid_parent,false,true);
        if ( inst != noone ){
        if ( inst.object_index == obj_world_tree_1 or inst.object_index == obj_world_rock_1 or inst.object_index == obj_world_rock_2 )
        {with(inst){instance_destroy();r--;}}}}}
        ds_list_clear(safe_list);
        break;
    }
    
    case 7: // Small-Size Sand Home (Treasure Loot)
    {
        // Ground
        ds_grid_set_region(global.world_tiles,argument0,argument1,argument0+1,argument1+1,16);
        // Walls
        door_set = choose(0,1,2,3);
        // Left Side
        
        chance = choose(0,1,2);
        if ( chance == 2 )
        {
        var crate = instance_create(world_x-12,world_y+32,objind(obj_smallcrate));
        crate.treasure_spawn = true;
        }
        
        inst=instance_create(world_x-64,world_y,objind(obj_sand_wall1));inst.image_angle=90;
        if ( door_set == 0 )
        {
        inst=instance_create(world_x-64,world_y+128,objind(obj_sand_doorway1));inst.image_angle=90;
        inst=instance_create(world_x-64,world_y+103,objind(obj_construct_door));inst.image_angle=90;inst.door_construct=0;inst.door_locked=1;
        chance=choose(0,1,3,4,5);if(chance==1){inst.door_locked=0;}
        }
        else
        {
        inst=instance_create(world_x-64,world_y+128,objind(obj_sand_wall1));inst.image_angle=90;
        }
        // Right Side
        
        chance = choose(0,1,2);
        if ( chance == 2 )
        {
        var crate = instance_create(world_x+160,world_y+64,objind(obj_smallcrate));
        crate.treasure_spawn = true;
        }
        
        inst=instance_create(world_x+192,world_y,objind(obj_sand_wall1));inst.image_angle=90;
        if ( door_set == 1 )
        {
        inst=instance_create(world_x+192,world_y+128,objind(obj_sand_doorway1));inst.image_angle=90;
        inst=instance_create(world_x+192,world_y+103,objind(obj_construct_door));inst.image_angle=90;inst.door_construct=0;inst.door_locked=1;
        chance=choose(0,1,3,4,5);if(chance==1){inst.door_locked=0;}
        }
        else
        {
        inst=instance_create(world_x+192,world_y+128,objind(obj_sand_wall1));inst.image_angle=90;
        }
        // Up Side
        
        chance = choose(0,1,2);
        if ( chance == 2 )
        {
        var crate = instance_create(world_x-12,world_y+12,objind(obj_smallcrate));
        crate.treasure_spawn = true;
        }
        
        inst=instance_create(world_x,world_y-64,objind(obj_sand_wall1));
        if ( door_set == 2 )
        {
        inst=instance_create(world_x+128,world_y-64,objind(obj_sand_doorway1));
        inst=instance_create(world_x+103,world_y-64,objind(obj_construct_door));inst.door_construct=0;inst.door_locked=1;
        chance=choose(0,1,3,4,5);if(chance==1){inst.door_locked=0;}
        }
        else
        {
        inst=instance_create(world_x+128,world_y-64,objind(obj_sand_wall1));
        }
        // Down Side
        
        chance = choose(0,1,2);
        if ( chance == 2 )
        {
        var crate = instance_create(world_x+64,world_y+32,objind(obj_smallcrate));
        crate.treasure_spawn = true;
        }
        
        inst=instance_create(world_x,world_y+192,objind(obj_sand_wall1));
        if ( door_set == 3 )
        {
        inst=instance_create(world_x+128,world_y+192,objind(obj_sand_doorway1));
        inst=instance_create(world_x+103,world_y+192,objind(obj_construct_door));inst.door_construct=0;inst.door_locked=1;
        chance=choose(0,1,3,4,5);if(chance==1){inst.door_locked=0;}
        }
        else
        {
        inst=instance_create(world_x+128,world_y+192,objind(obj_sand_wall1));
        }
        // Ceiling
        inst=instance_create(world_x,world_y,objind(obj_sand_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+128,world_y,objind(obj_sand_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x,world_y+128,objind(obj_sand_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+128,world_y+128,objind(obj_sand_ceiling1));ds_list_add(safe_list,inst);
        // Items
        temp_var = choose(0,1);
        if ( temp_var == 0 ){world_spawn_item(choose(world_x-32,world_x,world_x+160),choose(world_y,world_y-32,world_y+160),irandom(8),irandom(3)+1);}
        temp_var = choose(0,1);
        if ( temp_var == 0 ){world_spawn_item(choose(world_x-32,world_x,world_x+160),choose(world_y,world_y-32,world_y+160),irandom(8),irandom(3)+1);}
        // Clear Objects In The Way
        for(i=0;i<ds_list_size(safe_list)-1;i++){r=i;while(r==i){r++;
        inst = collision_rectangle(safe_list[| i].x-64,safe_list[| i].y-64,safe_list[| i].x+64,safe_list[| i].y+64,obj_solid_parent,false,true);
        if ( inst != noone ){
        if ( inst.object_index == obj_world_tree_1 or inst.object_index == obj_world_rock_1 or inst.object_index == obj_world_rock_2 )
        {with(inst){instance_destroy();r--;}}}}}
        ds_list_clear(safe_list);
        break;
    }
    
    case 8: // Small-Size Wood Home (Treasure Loot)
    {
        // Ground
        ds_grid_set_region(global.world_tiles,argument0,argument1,argument0+1,argument1+1,8);
        // Walls
        door_set = choose(0,1,2,3);
        // Left Side
        
        chance = choose(0,1,2);
        if ( chance == 2 )
        {
        var crate = instance_create(world_x-12,world_y+32,objind(obj_smallcrate));
        crate.treasure_spawn = true;
        }
        
        inst=instance_create(world_x-64,world_y,objind(obj_wood_wall1));inst.image_angle=90;
        if ( door_set == 0 )
        {
        inst=instance_create(world_x-64,world_y+128,objind(obj_wood_doorway1));inst.image_angle=90;
        inst=instance_create(world_x-64,world_y+103,objind(obj_construct_door));inst.image_angle=90;inst.door_construct=0;inst.door_locked=1;
        chance=choose(0,1,3,4,5);if(chance==1){inst.door_locked=0;}
        }
        else
        {
        inst=instance_create(world_x-64,world_y+128,objind(obj_wood_wall1));inst.image_angle=90;
        }
        // Right Side
        
        chance = choose(0,1,2);
        if ( chance == 2 )
        {
        var crate = instance_create(world_x+160,world_y+32,objind(obj_smallcrate));
        crate.treasure_spawn = true;
        }
        
        inst=instance_create(world_x+192,world_y,objind(obj_wood_wall1));inst.image_angle=90;
        if ( door_set == 1 )
        {
        inst=instance_create(world_x+192,world_y+128,objind(obj_wood_doorway1));inst.image_angle=90;
        inst=instance_create(world_x+192,world_y+103,objind(obj_construct_door));inst.image_angle=90;inst.door_construct=0;inst.door_locked=1;
        chance=choose(0,1,3,4,5);if(chance==1){inst.door_locked=0;}
        }
        else
        {
        inst=instance_create(world_x+192,world_y+128,objind(obj_wood_wall1));inst.image_angle=90;
        }
        // Up Side
        
        chance = choose(0,1,2);
        if ( chance == 2 )
        {
        var crate = instance_create(world_x+96,world_y-32,objind(obj_smallcrate));
        crate.treasure_spawn = true;
        }
        
        inst=instance_create(world_x,world_y-64,objind(obj_wood_wall1));
        if ( door_set == 2 )
        {
        inst=instance_create(world_x+128,world_y-64,objind(obj_wood_doorway1));
        inst=instance_create(world_x+103,world_y-64,objind(obj_construct_door));inst.door_construct=0;inst.door_locked=1;
        chance=choose(0,1,3,4,5);if(chance==1){inst.door_locked=0;}
        }
        else
        {
        inst=instance_create(world_x+128,world_y-64,objind(obj_wood_wall1));
        }
        // Down Side
        
        chance = choose(0,1,2);
        if ( chance == 2 )
        {
        var crate = instance_create(world_x+160,world_y+160,objind(obj_smallcrate));
        crate.treasure_spawn = true;
        }
        
        inst=instance_create(world_x,world_y+192,objind(obj_wood_wall1));
        if ( door_set == 3 )
        {
        inst=instance_create(world_x+128,world_y+192,objind(obj_wood_doorway1));
        inst=instance_create(world_x+103,world_y+192,objind(obj_construct_door));inst.door_construct=0;inst.door_locked=1;
        chance=choose(0,1,3,4,5);if(chance==1){inst.door_locked=0;}
        }
        else
        {
        inst=instance_create(world_x+128,world_y+192,objind(obj_wood_wall1));
        }
        // Ceiling
        inst=instance_create(world_x,world_y,objind(obj_wood_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+128,world_y,objind(obj_wood_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x,world_y+128,objind(obj_wood_ceiling1));ds_list_add(safe_list,inst);
        inst=instance_create(world_x+128,world_y+128,objind(obj_wood_ceiling1));ds_list_add(safe_list,inst);
        // Items
        temp_var = choose(0,1);
        if ( temp_var == 0 ){world_spawn_item(choose(world_x-32,world_x,world_x+160),choose(world_y,world_y-32,world_y+160),irandom(8),irandom(3)+1);}
        temp_var = choose(0,1);
        if ( temp_var == 0 ){world_spawn_item(choose(world_x-32,world_x,world_x+160),choose(world_y,world_y-32,world_y+160),irandom(8),irandom(3)+1);}
        // Clear Objects In The Way
        for(i=0;i<ds_list_size(safe_list)-1;i++){r=i;while(r==i){r++;
        inst = collision_rectangle(safe_list[| i].x-64,safe_list[| i].y-64,safe_list[| i].x+64,safe_list[| i].y+64,obj_solid_parent,false,true);
        if ( inst != noone ){
        if ( inst.object_index == obj_world_tree_1 or inst.object_index == obj_world_rock_1 or inst.object_index == obj_world_rock_2 )
        {with(inst){instance_destroy();r--;}}}}}
        ds_list_clear(safe_list);
        break;
    }
}
}

ds_list_destroy(safe_list);
