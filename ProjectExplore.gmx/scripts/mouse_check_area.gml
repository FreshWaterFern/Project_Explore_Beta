/// mouse_check_area(x1,y1,x2,y2);
if ( global.tablet_mode == 0 ){
var m_x = mouse_x-view_xview[0];
var m_y = mouse_y-view_yview[0];}else{
var m_x = device_mouse_x_to_gui(global.c_touch_count);
var m_y = device_mouse_y_to_gui(global.c_touch_count);}
if ( m_x > argument0 )
{
    if ( m_x < argument2 )
    {
        if ( m_y > argument1 )
        {
            if ( m_y < argument3 )
            {
                return true;
            }else{return false;}
        }else{return false;}
    }else{return false;}
}else{return false;}
