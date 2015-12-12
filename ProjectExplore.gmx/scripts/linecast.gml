/// linecast(x1, y1, x2, y2, obj, prec, notme)
var maxDist = point_distance(argument0, argument1, argument2, argument3);
var dist = maxDist;
var halfDist = maxDist;
var dir = point_direction(argument0, argument1, argument2, argument3);
var contact = true;

while(halfDist >= 1 && contact)
{
    halfDist /= 2;
    
    if(collision_line(argument0, argument1, argument0 + lengthdir_x(dist, dir), argument1 + lengthdir_y(dist, dir), argument4, argument5, argument6))
        dist -= halfDist;
    else if(dist == maxDist)
        contact = false;
    else
        dist += halfDist;
}

if(!contact)
    dist = maxDist;

global.contactX = argument0 + lengthdir_x(dist, dir);
global.contactY = argument1 + lengthdir_y(dist, dir);
global.contactDistance = dist;

return contact;
