/// world_set_size()
switch(global.world_size)
{

case "Small":{
room_set_width(room_world_editor,1280*15);
room_set_height(room_world_editor,1280*15);
break;}

case "Medium":{
room_set_width(room_world_editor,1280*30);
room_set_height(room_world_editor,1280*30);
break;}

case "Large":{
room_set_width(room_world_editor,1280*45);
room_set_height(room_world_editor,1280*45);
break;}

case "Extra Large":{
room_set_width(room_world_editor,1280*60);
room_set_height(room_world_editor,1280*60);
break;}

}
