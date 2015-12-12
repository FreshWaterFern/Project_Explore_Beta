/// item_cook_conversion(item_id,type)
var item_id = 0;
if ( argument1 == 0 )
{
switch(argument0)
{
    case 9:ach_pass = true;item_id = 135;break;
    case 70:ach_pass = true;item_id = 136;break;
    case 73:ach_pass = true;item_id = 140;break;
    case 75:ach_pass = true;item_id = 141;break;
    case 76:ach_pass = true;item_id = 142;break;
    case 77:ach_pass = true;item_id = 143;break;
    case 87:ach_pass = true;item_id = 137;break;
}
}

if ( argument1 == 1 )
{
switch(argument0)
{
    case 9:ach_pass = false;item_id = 1.25;break;
    case 70:ach_pass = false;item_id = 1.5;break;
    case 73:ach_pass = false;item_id = 1.1;break;
    case 75:ach_pass = false;item_id = 1.0;break;
    case 76:ach_pass = false;item_id = 1.0;break;
    case 77:ach_pass = false;item_id = 1.0;break;
    case 87:ach_pass = false;item_id = 1.1;break;
    default:req_time=0;burn_spent=0;break;
}
}

return item_id;
