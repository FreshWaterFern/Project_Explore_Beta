/// construct_house_ini(type)
// 0 = Foundation, 1 = Ceiling

if ( argument0 == 0 )
{
    var inst = collision_rectangle(x-64,y-64,x+64,y+64,obj_foundation_parent,false,true)
    if ( inst != noone )
    {
    return inst.id;
    }
    else
    {
    return id;
    }
}
