/// ai_grid_add_self(left,top,right,bottom)
mp_grid_clear_rectangle(global.pathing_grid,argument0,argument1,argument2,argument3);

mp_grid_add_instances(global.pathing_grid,obj_solid_parent,false);

mp_grid_add_instances(global.pathing_grid,obj_special_solid_parent,false);
