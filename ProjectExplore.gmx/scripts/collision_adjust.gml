/// collision_adjust()
if ( collision_rectangle(x-64,y-64,x+64,y+64,obj_solid_parent,false,true) )
{
    var i = 0;var r = 0;var collision = true;
    for(i=-8;i<8;i++)
    {
        if ( collision == false )
        {
        break;
        }
        for(r=-8;r<8;r++)
        {
        if ( !collision_rectangle(x-64-(i*16),y-64-(r*16),x+64-(i*16),y+64-(r*16),obj_solid_parent,false,true) )
        {
        x -= i*16;
        y -= r*16;
        collision = false;
        break;
        }
        }
    }
}
