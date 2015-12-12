/// instance_is_active(distance)

gml_pragma("forceinline");

if ( point_distance(x,y,obj_player.x,obj_player.y) < argument0 )
{active = true;}
else
{active = false;}
