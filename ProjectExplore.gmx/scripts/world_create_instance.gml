/// world_create_instance(x,y,object,rotation,index)

var inst = instance_create(floor(argument0),floor(argument1),floor(argument2));

inst.angle = floor(argument3);
with(inst){ // Parse mod information into the instance
var list = ds_list_create();var i = 0;var object_id = db_object_get_name(global.item_data[#argument4,0]);
list = object_mod_inherit(object_id);
obj_name=list[|0];
index=argument4;
texture=background_get_texture(real(list[|1]));
sprite_index=real(list[|2]);
type=real(list[|3]);
switch(type)
{

case 0:{ds_grid_resize(c_inv,real(list[|4]),real(list[|5]));ds_grid_resize(c_stack,real(list[|4]),real(list[|5]));break;}

case 2:{var datalist1 = convert_string_to_list(list[|4],",");var datalist2 = convert_string_to_list(list[|5],",");
fire_effect = real(datalist1[|0]);glow_effect = real(datalist1[|1]);smoke_effect = real(datalist1[|2]);burn_rate = real(datalist1[|3]);cook_rate = real(datalist1[|4]);
ds_grid_resize(c_inv,real(datalist1[|5]),real(datalist1[|6]));ds_grid_resize(c_stack,real(datalist1[|5]),real(datalist1[|6]));
ds_grid_resize(cooking_grid,real(datalist1[|5]),real(datalist1[|6]));
var list_size = ds_list_size(datalist2);
for(i=0;i<list_size;i+=2){ds_list_add(fuel_item,datalist2[|i]);ds_list_add(fuel_gain,datalist2[|i+1]);}
if ( !smoke_effect ){part_type_destroy(pt_1);}
if ( !fire_effect ){part_type_destroy(pt_2);}
if ( !glow_effect ){part_type_destroy(pt_3);}
break;}

}
rot=real(list[|6]);
is_3d=real(list[|7]);
if ( is_3d != 0 )
{
var temp_list = ds_list_create();
temp_list=convert_string_to_list(list[|8],",");
for(i=0;i<ds_list_size(temp_list);i++)
{ds_list_add(data_x,real(temp_list[|i]));}
temp_list=convert_string_to_list(list[|9],",");
for(i=0;i<ds_list_size(temp_list);i++)
{ds_list_add(data_y,real(temp_list[|i]));}
temp_list=convert_string_to_list(list[|10],",");
for(i=0;i<ds_list_size(temp_list);i++)
{ds_list_add(data_z1,real(temp_list[|i]));}
temp_list=convert_string_to_list(list[|11],",");
for(i=0;i<ds_list_size(temp_list);i++)
{ds_list_add(data_z2,real(temp_list[|i]));}
temp_list=convert_string_to_list(list[|12],",");
for(i=0;i<ds_list_size(temp_list);i++)
{ds_list_add(data_xsize,real(temp_list[|i]));}
temp_list=convert_string_to_list(list[|13],",");
for(i=0;i<ds_list_size(temp_list);i++)
{ds_list_add(data_ysize,real(temp_list[|i]));}
ds_list_destroy(temp_list);

// Pre-calculate all math for rotations
var i = 0;var px = 0;var py = 0;var theta = degtorad(angle);
if ( rot ){
for(i=0;i<ds_list_size(data_x);i++)
{px = (data_x[|i]*cos(theta))-(data_y[|i]*sin(theta));py = (data_x[|i]*sin(theta))+(data_y[|i]*cos(theta));data_x[|i]=px;data_y[|i]=py;}}
}
}

return inst;
