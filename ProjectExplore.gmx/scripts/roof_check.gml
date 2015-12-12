/// roof_check()
if ( ds_list_find_index(global.roof_list,id) == -1 ){
ds_list_add(global.roof_list,id);
inst = collision_point(x+84,y,obj_roof_parent,false,true);
if ( inst != noone ){inst.check_pass = true;with(inst){roof_check()}}
inst = collision_point(x,y+84,obj_roof_parent,false,true);
if ( inst != noone ){inst.check_pass = true;with(inst){roof_check()}}
inst = collision_point(x-84,y,obj_roof_parent,false,true);
if ( inst != noone ){inst.check_pass = true;with(inst){roof_check()}}
inst = collision_point(x,y-84,obj_roof_parent,false,true);
if ( inst != noone ){inst.check_pass = true;with(inst){roof_check()}}}
