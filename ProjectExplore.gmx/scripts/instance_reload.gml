/// instance_reload(index)
i = argument0;

if ( instance_exists(ds_list_find_value(global.w_obj_id,i)) == false )
{
    var scale = 0;
    var inst = instance_create(ds_list_find_value(global.w_obj_x,i),ds_list_find_value(global.w_obj_y,i),asset_get_index(string(ds_list_find_value(global.w_obj_index,i))));
    ds_list_replace(global.w_obj_id,i,inst);
    inst.image_angle = real(ds_list_find_value(global.w_obj_angle,i)); // image_angle
    var obj_name = object_get_name(inst.object_index);
    switch(obj_name)
    {
        case "obj_world_tree_1":
        {
        inst.resource_count = real(ds_list_find_value(global.w_obj_var1,i)); // resource_count
        inst.height = real(ds_list_find_value(global.w_obj_var2,i)); // height
        inst.tree_top_sub = real(ds_list_find_value(global.w_obj_var3,i)); // tree_top_sub
        inst.tree_top_rot = real(ds_list_find_value(global.w_obj_var4,i)); // tree_top_rot
        break;
        }
        case "obj_world_rock_1":
        {
        inst.sprite_index = asset_get_index(string(ds_list_find_value(global.w_obj_var1,i))); // sprite_index
        inst.direction = real(ds_list_find_value(global.w_obj_var2,i)); // direction
        scale = real(ds_list_find_value(global.w_obj_var3,i)); // scale
        inst.scale_x = scale;inst.scale_y = scale;
        inst.resource_count = real(ds_list_find_value(global.w_obj_var4,i)); // resource_count
        break;
        }
        case "obj_world_rock_2":
        {
        inst.sprite_index = asset_get_index(string(ds_list_find_value(global.w_obj_var1,i))); // sprite_index
        inst.direction = real(ds_list_find_value(global.w_obj_var2,i)); // direction
        scale = real(ds_list_find_value(global.w_obj_var3,i)); // scale
        inst.scale_x = scale;inst.scale_y = scale;
        inst.resource_count = real(ds_list_find_value(global.w_obj_var4,i)); // resource_count
        break;
        }
        case "obj_construct_wall":
        {
        inst.construct_health = real(ds_list_find_value(global.w_obj_var1,i)); // resource_count
        break;
        }
        case "obj_construct_pillar":
        {
        inst.construct_health = real(ds_list_find_value(global.w_obj_var1,i)); // resource_count
        break;
        }
        case "obj_construct_doorway":
        {
        inst.construct_health = real(ds_list_find_value(global.w_obj_var1,i)); // resource_count
        break;
        }
        case "obj_construct_door":
        {
        inst.construct_health = real(ds_list_find_value(global.w_obj_var1,i)); // resource_count
        inst.door_locked = real(ds_list_find_value(global.w_obj_var2,i)); // door_locked
        inst.door_construct = real(ds_list_find_value(global.w_obj_var3,i)); // door_construct
        break;
        }
        case "obj_construct_fence":
        {
        inst.construct_health = real(ds_list_find_value(global.w_obj_var1,i)); // resource_count
        break;
        }
        case "obj_construct_flag":
        {
        inst.waypoint_name = string(ds_list_find_value(global.w_obj_var1,i));// waypoint_name
        inst.waypoint_index = string(ds_list_find_value(global.w_obj_var2,i));// waypoint_index
        inst.flag_color = real(ds_list_find_value(global.w_obj_var3,i)); // flag_color
        break;
        }
        case "obj_ai_wolf":
        {
        inst.ai_health = real(ds_list_find_value(global.w_obj_var1,i)); // ai_health
        inst.ai_spawn_resource = real(ds_list_find_value(global.w_obj_var2,i)); // ai_spawn_resource
        break;
        }
        case "obj_ai_bear":
        {
        inst.ai_health = real(ds_list_find_value(global.w_obj_var1,i)); // ai_health
        inst.ai_spawn_resource = real(ds_list_find_value(global.w_obj_var2,i)); // ai_spawn_resource
        break;
        }
        case "obj_ai_nomadstalker":
        {
        inst.ai_health = real(ds_list_find_value(global.w_obj_var1,i)); // ai_health
        inst.ai_spawn_resource = real(ds_list_find_value(global.w_obj_var2,i)); // ai_spawn_resource
        break;
        }
        case "obj_ai_buck":
        {
        inst.ai_health = real(ds_list_find_value(global.w_obj_var1,i)); // ai_health
        inst.ai_spawn_resource = real(ds_list_find_value(global.w_obj_var2,i)); // ai_spawn_resource
        break;
        }
        case "obj_plant":
        {
        inst.plant_type = real(ds_list_find_value(global.w_obj_var1,i)); // plant_type
        inst.plant_state = real(ds_list_find_value(global.w_obj_var2,i)); // plant_state
        break;
        }
        case "obj_smallcrate":
        {
        with(inst)
        {
        ds_grid_read(c_inv,string(ds_list_find_value(global.w_obj_var1,other.i))); // c_inv
        ds_grid_read(c_stack,string(ds_list_find_value(global.w_obj_var2,other.i))); // c_stack
        }
        break;
        }
        case "obj_largecrate":
        {
        with(inst)
        {
        ds_grid_read(c_inv,string(ds_list_find_value(global.w_obj_var1,other.i))); // c_inv
        ds_grid_read(c_stack,string(ds_list_find_value(global.w_obj_var2,other.i))); // c_stack
        }
        break;
        }
        case "obj_dead_skeleton1":
        {
        with(inst)
        {
        ds_grid_read(c_inv,string(ds_list_find_value(global.w_obj_var1,other.i))); // c_inv
        ds_grid_read(c_stack,string(ds_list_find_value(global.w_obj_var2,other.i))); // c_stack
        }
        break;
        }
        case "obj_furn_table1":
        {
        with(inst)
        {
        ds_grid_read(c_inv,string(ds_list_find_value(global.w_obj_var1,other.i))); // c_inv
        ds_grid_read(c_stack,string(ds_list_find_value(global.w_obj_var2,other.i))); // c_stack
        }
        break;
        }
        case "obj_furn_woodchest1":
        {
        with(inst)
        {
        ds_grid_read(c_inv,string(ds_list_find_value(global.w_obj_var1,other.i))); // c_inv
        ds_grid_read(c_stack,string(ds_list_find_value(global.w_obj_var2,other.i))); // c_stack
        }
        break;
        }
        case "obj_item_dropped":
        {
        inst.item_id = real(ds_list_find_value(global.w_obj_var1,other.i)); // item_id
        inst.item_stack = real(ds_list_find_value(global.w_obj_var2,other.i)); // item_stack
        break;
        }
        case "obj_campfire":
        {
        inst.is_enabled = real(ds_list_find_value(global.w_obj_var1,i)); // is_enabled
        break;
        }
        case "obj_bigfire":
        {
        inst.is_enabled = real(ds_list_find_value(global.w_obj_var1,i)); // is_enabled
        break;
        } 
        case "obj_lantern":
        {
        inst.is_enabled = real(ds_list_find_value(global.w_obj_var1,i)); // is_enabled
        break;
        } 
}
}
