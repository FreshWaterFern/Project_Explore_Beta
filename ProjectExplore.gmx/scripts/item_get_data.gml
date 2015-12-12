/// item_get_data(item_id,data_type)
// data_type, 0 = Item Name, 1 = Item Description, 2 = Item Sprite, 3 = Activate Item, 4 = Check If Weapon, 5 = Break Speed, 6 = Stack Limit

/*
var check_destroy = false;
var xcenter = view_xview[0]+view_wview[0]/2;
var ycenter = view_yview[0]+view_hview[0]/2;
var inst = 0;


switch(argument0)
{
    case 0:{
        if ( argument1 == 0 ){return "";break;}
        if ( argument1 == 1 ){return "";break;}  
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 0;break;}break;
    break;}
    case 1:{
        if ( argument1 == 0 ){return "Nymph";break;}
        if ( argument1 == 1 ){return "A tasty drink that offers you a rush of caffeine!";break;}
        if ( argument1 == 2 ){return spr_item_nymph;break;}
        if ( argument1 == 3 ){obj_game.c_health+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 HP";inst.v_color=c_green;obj_game.c_food+=7.5;inst=instance_create(x,y+30,obj_popup_text);inst.text="+7.5 Food";inst.v_color=obj_game_render.col_orange;obj_game.c_thirst+=10;inst=instance_create(x,y+60,obj_popup_text);inst.text="+10 Thirst";inst.v_color=c_teal;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 2:{
        if ( argument1 == 0 ){return "Honey Bar";break;}
        if ( argument1 == 1 ){return "A delicious honey coated granola bar!";break;}
        if ( argument1 == 2 ){return spr_item_honeybar;break;}
        if ( argument1 == 3 ){obj_game.c_health+=20;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+20 HP";inst.v_color=c_green;obj_game.c_food+=7.5;inst=instance_create(x,y+30,obj_popup_text);inst.text="+7.5 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 3:{
        if ( argument1 == 0 ){return "Wood";break;}
        if ( argument1 == 1 ){return "This can be used when building and crafting.";break;}
        if ( argument1 == 2 ){return spr_item_wood;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 16;break;}break;
    break;}
    case 4:{
        if ( argument1 == 0 ){return "Rock";break;}
        if ( argument1 == 1 ){return "This can be used as a tool of destruction.";break;}
        if ( argument1 == 2 ){return spr_weapon_rock;break;}
        if ( argument1 == 4 ){return true;break;}
        if ( argument1 == 5 ){return 0.3;break;}
        if ( argument1 == 6 ){return 8;break;}break;
    break;}
    case 5:{
        if ( argument1 == 0 ){return "Foundation";break;}
        if ( argument1 == 1 ){return "This is the base of any home.";break;}
        if ( argument1 == 2 ){return spr_item_foundation;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 4;break;}break;
    break;}
    case 6:{
        if ( argument1 == 0 ){return "Wall";break;}
        if ( argument1 == 1 ){return "These walls can attach to a foundation.";break;}
        if ( argument1 == 2 ){return spr_item_wall;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 4;break;}break;
    break;}
    case 7:{
        if ( argument1 == 0 ){return "Ceiling";break;}
        if ( argument1 == 1 ){return "This can attach to walls.";break;}
        if ( argument1 == 2 ){return spr_item_ceiling;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 4;break;}break;
    break;}
    case 8:{
        if ( argument1 == 0 ){return "Doorway";break;}
        if ( argument1 == 1 ){return "This doorway can attach to a foundation.";break;}
        if ( argument1 == 2 ){return spr_item_doorway;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 4;break;}break;
    break;}
    case 9:{
        if ( argument1 == 0 ){return "Raw Wolf Meat";break;}
        if ( argument1 == 1 ){return "A big ole' chunk of wolf meat.";break;}
        if ( argument1 == 2 ){return spr_item_animalmeat;break;}
        if ( argument1 == 3 ){obj_game.c_health+=2.5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+2.5 HP";inst.v_color=c_green;obj_game.c_food+=10;inst=instance_create(x,y+30,obj_popup_text);inst.text="+10 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 5;break;}
    break;}
    case 10:{
        if ( argument1 == 0 ){return "Screw Driver";break;}
        if ( argument1 == 1 ){return "This can be used as a tool of destruction.";break;}
        if ( argument1 == 2 ){return spr_weapon_screwdriver;break;}
        if ( argument1 == 4 ){return true;break;}
        if ( argument1 == 5 ){return 0.15;break;}
        if ( argument1 == 6 ){return 1;break;}break;
    break;}
    case 11:{
        if ( argument1 == 0 ){return "Broken Clock";break;}
        if ( argument1 == 1 ){return "A small golden clock. Not worn down but definitely broken.";break;}
        if ( argument1 == 2 ){return spr_item_broken_clock;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 4;break;}break;
    break;}
    case 12:{
        if ( argument1 == 0 ){return "Knife";break;}
        if ( argument1 == 1 ){return "This can be used as a tool of destruction.";break;}
        if ( argument1 == 2 ){return spr_weapon_knife;break;}
        if ( argument1 == 4 ){return true;break;}
        if ( argument1 == 5 ){return 0.23;break;}
        if ( argument1 == 6 ){return 1;break;}break;
    break;}
    case 13:{
        if ( argument1 == 0 ){return "Gear";break;}
        if ( argument1 == 1 ){return "Tiny metal gear. Useful when crafting various devices.";break;}
        if ( argument1 == 2 ){return spr_item_gear;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}break;
    break;}
    case 14:{
        if ( argument1 == 0 ){return "Water Bottle";break;}
        if ( argument1 == 1 ){return "A nice room temperature bottle of water!";break;}
        if ( argument1 == 2 ){return spr_item_waterbottle;break;}
        if ( argument1 == 3 ){obj_game.c_health+=7.5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)
        if(global.v_item_stack==1){inventory_destroy_item(global.v_slot_x,global.v_slot_y,global.v_slot_part,101,1);with(obj_inv_slot){alarm[0]=1}}else{check_destroy=true;}}else
        {inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+7.5 HP";inst.v_color=c_green;obj_game.c_thirst+=15;inst=instance_create(x,y+30,obj_popup_text);inst.text="+15 Thirst";inst.v_color=c_teal;check_destroy=true;inventory_add(101,1,false);break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 15:{
        if ( argument1 == 0 ){return "Vitamin Water";break;}
        if ( argument1 == 1 ){return "A nice room temperature bottle of vitamin water!";break;}
        if ( argument1 == 2 ){return spr_item_vitaminwater;break;}
        if ( argument1 == 3 ){obj_game.c_health+=15;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)
        if(global.v_item_stack==1){inventory_destroy_item(global.v_slot_x,global.v_slot_y,global.v_slot_part,101,1);with(obj_inv_slot){alarm[0]=1}}else{check_destroy=true;}}else
        {inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+15 HP";inst.v_color=c_green;obj_game.c_thirst+=15;inst=instance_create(x,y+30,obj_popup_text);inst.text="+15 Thirst";inst.v_color=c_teal;check_destroy=true;inventory_add(101,1,false);break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 16:{
        if ( argument1 == 0 ){return "Veggie Water";break;}
        if ( argument1 == 1 ){return "A nice room temperature bottle of veggie water!";break;}
        if ( argument1 == 2 ){return spr_item_veggiewater;break;}
        if ( argument1 == 3 ){obj_game.c_health+=12.5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)
        if(global.v_item_stack==1){inventory_destroy_item(global.v_slot_x,global.v_slot_y,global.v_slot_part,101,1);with(obj_inv_slot){alarm[0]=1}}else{check_destroy=true;}}else
        {inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+12.5 HP";inst.v_color=c_green;obj_game.c_thirst+=15;inst=instance_create(x,y+63,obj_popup_text);inst.text="+15 Thirst";inst.v_color=c_teal;check_destroy=true;inventory_add(101,1,false);break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 17:{
        if ( argument1 == 0 ){return "Stick";break;}
        if ( argument1 == 1 ){return "This can be used when building and crafting.";break;}
        if ( argument1 == 2 ){return spr_item_stick;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 16;break;}break;
    break;}
    case 18:{
        if ( argument1 == 0 ){return "Pep-D";break;}
        if ( argument1 == 1 ){return "A tasty drink that offers you a rush of caffeine!";break;}
        if ( argument1 == 2 ){return spr_item_pepd;break;}
        if ( argument1 == 3 ){obj_game.c_health+=12.5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+12.5 HP";inst.v_color=c_green;obj_game.c_food+=6.5;inst=instance_create(x,y+30,obj_popup_text);inst.text="+6.5 Food";inst.v_color=obj_game_render.col_orange;obj_game.c_thirst+=10;inst=instance_create(x,y+60,obj_popup_text);inst.text="+10 Thirst";inst.v_color=c_teal;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 19:{
        if ( argument1 == 0 ){return "Canned Fish";break;}
        if ( argument1 == 1 ){return "A nice compact can of fish!";break;}
        if ( argument1 == 2 ){return spr_item_canned_fish;break;}
        if ( argument1 == 3 ){obj_game.c_health+=15;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+15 HP";inst.v_color=c_green;obj_game.c_food+=20;inst=instance_create(x,y+30,obj_popup_text);inst.text="+20 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 4;break;}
    break;}
    case 20:{
        if ( argument1 == 0 ){return "Dr.Salt";break;}
        if ( argument1 == 1 ){return "A tasty drink that offers you a rush of caffeine!";break;}
        if ( argument1 == 2 ){return spr_item_drsalt;break;}
        if ( argument1 == 3 ){obj_game.c_health+=12.5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+12.5 HP";inst.v_color=c_green;obj_game.c_food+=6.5;inst=instance_create(x,y+30,obj_popup_text);inst.text="+6.5 Food";inst.v_color=obj_game_render.col_orange;obj_game.c_thirst+=10;inst=instance_create(x,y+60,obj_popup_text);inst.text="+10 Thirst";inst.v_color=c_teal;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 21:{
        if ( argument1 == 0 ){return "Small Fire";break;}
        if ( argument1 == 1 ){return "Can be ignited to keep you warm and sane through the night.";break;}
        if ( argument1 == 2 ){return spr_item_campfire;break;}        
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 22:{
        if ( argument1 == 0 ){return "Large Crate";break;}
        if ( argument1 == 1 ){return "A large storage crate for all your storage needs!";break;}
        if ( argument1 == 2 ){return spr_item_largecrate;break;}        
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 23:{
        if ( argument1 == 0 ){return "Big Fire";break;}
        if ( argument1 == 1 ){return "Can be ignited to keep you warm and sane through the night.";break;}
        if ( argument1 == 2 ){return spr_item_bigfire;break;}        
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 24:{
        if ( argument1 == 0 ){return "Torch";break;}
        if ( argument1 == 1 ){return "This can be used to find your way in the dark.";break;}
        if ( argument1 == 2 ){return spr_item_torch;break;}        
        if ( argument1 == 4 ){return true;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 25:{
        if ( argument1 == 0 ){return "Small Crate";break;}
        if ( argument1 == 1 ){return "A small storage crate for some of your storage needs!";break;}
        if ( argument1 == 2 ){return spr_item_smallcrate;break;}        
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 26:{
        if ( argument1 == 0 ){return "Cloth";break;}
        if ( argument1 == 1 ){return "This can be used when crafting.";break;}
        if ( argument1 == 2 ){return spr_item_cloth;break;}        
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 27:{
        if ( argument1 == 0 ){return "Animal Fat";break;}
        if ( argument1 == 1 ){return "This can be used when crafting.";break;}
        if ( argument1 == 2 ){return spr_item_fat;break;}        
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 28:{
        if ( argument1 == 0 ){return "Lantern";break;}
        if ( argument1 == 1 ){return "Can be ignited to keep you warm and sane through the night.";break;}
        if ( argument1 == 2 ){return spr_item_lantern;break;}        
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 29:{
        if ( argument1 == 0 ){return "Fence";break;}
        if ( argument1 == 1 ){return "This fence can be placed anywhere.";break;}
        if ( argument1 == 2 ){return spr_item_fence;break;}        
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 4;break;}
    break;}
    case 30:{
        if ( argument1 == 0 ){return "Stone Axe";break;}
        if ( argument1 == 1 ){return "This can be used as a tool of destruction.";break;}
        if ( argument1 == 2 ){return spr_weapon_stoneaxe;break;}        
        if ( argument1 == 4 ){return true;break;}
        if ( argument1 == 5 ){return 0.8;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 31:{
        if ( argument1 == 0 ){return "Shovel";break;}
        if ( argument1 == 1 ){return "This can be used to modify the terrain.";break;}
        if ( argument1 == 2 ){return spr_weapon_shovel;break;}        
        if ( argument1 == 4 ){return true;break;}
        if ( argument1 == 5 ){return 0.4;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 32:{
        if ( argument1 == 0 ){return "Grass Surface";break;}
        if ( argument1 == 1 ){return "Grass covered surface.";break;}
        if ( argument1 == 2 ){return spr_item_terrain_grass;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 16;break;}
    break;}
    case 33:{
        if ( argument1 == 0 ){return "Fine Wood Surface";break;}
        if ( argument1 == 1 ){return "A smooth wood surface.";break;}
        if ( argument1 == 2 ){return spr_item_terrain_wood_nice;break;}        
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 16;break;}
    break;}
    case 34:{
        if ( argument1 == 0 ){return "Stone Tile Surface";break;}
        if ( argument1 == 1 ){return "Rustic stone tiles for the finest floors.";break;}
        if ( argument1 == 2 ){return spr_item_terrain_stonetile;break;}        
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 16;break;}
    break;}
    case 35:{
        if ( argument1 == 0 ){return "Old Wood Surface";break;}
        if ( argument1 == 1 ){return "An old wood surface.";break;}
        if ( argument1 == 2 ){return spr_item_terrain_wood_old;break;}        
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 16;break;}
    break;}
    case 36:{
        if ( argument1 == 0 ){return "'Tale of Two Maidens and Thy Chalice'";break;}
        if ( argument1 == 1 ){return "A good read through and highly rated.";break;}
        if ( argument1 == 2 ){return spr_item_taleoftwogirlsandthychalice;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+5 Sanity";inst.v_color=c_blue;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 37:{
        if ( argument1 == 0 ){return "'Pragmatic Thinking: Volume I'";break;}
        if ( argument1 == 1 ){return "Learn how to think like a programmer.";break;}
        if ( argument1 == 2 ){return spr_item_bigbook_1;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+5 Sanity";inst.v_color=c_blue;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 38:{
        if ( argument1 == 0 ){return "'Pragmatic Thinking: Volume II'";break;}
        if ( argument1 == 1 ){return "Learn how to think like a programmer.";break;}
        if ( argument1 == 2 ){return spr_item_bigbook_2;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+5 Sanity";inst.v_color=c_blue;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 39:{
        if ( argument1 == 0 ){return "'Mineshaft: Survival Stories'";break;}
        if ( argument1 == 1 ){return "A story of one man and his survival in a mineshaft.";break;}
        if ( argument1 == 2 ){return spr_item_book_3;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+5 Sanity";inst.v_color=c_blue;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 40:{
        if ( argument1 == 0 ){return "'Life Of A Streamer'";break;}
        if ( argument1 == 1 ){return "A story about the struggles of an up and coming streamer.";break;}
        if ( argument1 == 2 ){return spr_item_book_2;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+5 Sanity";inst.v_color=c_blue;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 41:{
        if ( argument1 == 0 ){return "'How To Not Go Crazy'";break;}
        if ( argument1 == 1 ){return "This guide has saved many from their own minds.";break;}
        if ( argument1 == 2 ){return spr_item_book_howtonotgocrazy;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 Sanity";inst.v_color=c_blue;check_destroy=true;
        if ( !steam_get_achievement("How To Not Go Crazy") )
        {steam_set_achievement("How To Not Go Crazy")}break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 42:{
        if ( argument1 == 0 ){return "'Indie Game Developer'";break;}
        if ( argument1 == 1 ){return "A beautiful story about one man and his battle with game development.";break;}
        if ( argument1 == 2 ){return spr_item_book_1;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 Sanity";inst.v_color=c_blue;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 43:{
        if ( argument1 == 0 ){return "'I Am Leth'";break;}
        if ( argument1 == 1 ){return "This book appears to be old and a reference to another world.";break;}
        if ( argument1 == 2 ){return spr_item_book_2;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 Sanity";inst.v_color=c_blue;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 44:{
        if ( argument1 == 0 ){return "Stone Surface";break;}
        if ( argument1 == 1 ){return "Rustic stone surface.";break;}
        if ( argument1 == 2 ){return spr_item_terrain_stone1;break;}        
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 16;break;}break;
    break;}
    case 45:{
        if ( argument1 == 0 ){return "'Lord Of The Jewelry'";break;}
        if ( argument1 == 1 ){return "A very dull tale that depicts two midgets carrying jewelry to a hill.";break;}
        if ( argument1 == 2 ){return spr_item_bigbook_3;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+5 Sanity";inst.v_color=c_blue;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 46:{
        if ( argument1 == 0 ){return "Canned Fruit";break;}
        if ( argument1 == 1 ){return "A can of fruit. Sweet and healthy!";break;}
        if ( argument1 == 2 ){return spr_item_canned_fruit;break;}
        if ( argument1 == 3 ){obj_game.c_health+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 HP";inst.v_color=c_green;obj_game.c_food+=10;inst=instance_create(x,y+30,obj_popup_text);inst.text="+10 Food";inst.v_color=obj_game_render.col_orange;obj_game.c_thirst+=7.5;inst=instance_create(x,y+60,obj_popup_text);inst.text="+7.5 Thirst";inst.v_color=c_teal;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 4;break;}
    break;}
    case 47:{
        if ( argument1 == 0 ){return "Canned Clam";break;}
        if ( argument1 == 1 ){return "A can of clam. Chunky goodness.";break;}
        if ( argument1 == 2 ){return spr_item_canned_clam;break;}
        if ( argument1 == 3 ){obj_game.c_health+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 HP";inst.v_color=c_green;obj_game.c_food+=10;inst=instance_create(x,y+30,obj_popup_text);inst.text="+10 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 4;break;}
    break;}
    case 48:{
        if ( argument1 == 0 ){return "Apple Juice";break;}
        if ( argument1 == 1 ){return "Sweet and delicious apple juice.";break;}
        if ( argument1 == 2 ){return spr_item_applejuice;break;}
        if ( argument1 == 3 ){obj_game.c_health+=5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+5 HP";inst.v_color=c_green;obj_game.c_food+=5;inst=instance_create(x,y+30,obj_popup_text);inst.text="+5 Food";inst.v_color=obj_game_render.col_orange;obj_game.c_thirst+=7.5;inst=instance_create(x,y+60,obj_popup_text);inst.text="+7.5 Thirst";inst.v_color=c_teal;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 4;break;}
    break;}
    case 49:{
        if ( argument1 == 0 ){return "Canned Beans";break;}
        if ( argument1 == 1 ){return "A can of beans. Baked beans. Yum.";break;}
        if ( argument1 == 2 ){return spr_item_canned_beans;break;}
        if ( argument1 == 3 ){obj_game.c_health+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 HP";inst.v_color=c_green;obj_game.c_food+=10;inst=instance_create(x,y+30,obj_popup_text);inst.text="+10 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 4;break;}
    break;}
    case 50:{
        if ( argument1 == 0 ){return "Chef Girlardee";break;}
        if ( argument1 == 1 ){return "A can of spaghetti. Often referred to as, 'Italy in a can'.";break;}
        if ( argument1 == 2 ){return spr_item_chef_girlardee;break;}
        if ( argument1 == 3 ){obj_game.c_health+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 HP";inst.v_color=c_green;obj_game.c_food+=10;inst=instance_create(x,y+30,obj_popup_text);inst.text="+10 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 4;break;}
    break;}
    case 51:{
        if ( argument1 == 0 ){return "Crowbar";break;}
        if ( argument1 == 1 ){return "This can be used as a tool of destruction.";break;}
        if ( argument1 == 2 ){return spr_weapon_crowbar;break;}       
        if ( argument1 == 4 ){return true;break;}
        if ( argument1 == 5 ){return 0.35;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 52:{
        if ( argument1 == 0 ){return "Peanut Butter Cookie";break;}
        if ( argument1 == 1 ){return "Sweet and delicious goodness. Made of peanut butter and love.";break;}
        if ( argument1 == 2 ){return spr_item_peanutbutter_cookie;break;}
        if ( argument1 == 3 ){obj_game.c_health+=5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+5 HP";inst.v_color=c_green;obj_game.c_food+=5;inst=instance_create(x,y+30,obj_popup_text);inst.text="+5 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 53:{
        if ( argument1 == 0 ){return "'Cute Bear Doll'";break;}
        if ( argument1 == 1 ){return "Keep this in your perk slots, it will help you maintain sanity.";break;}
        if ( argument1 == 2 ){return spr_item_teddy1;break;}        
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 54:{
        if ( argument1 == 0 ){return "'Black Jogging Shoes'";break;}
        if ( argument1 == 1 ){return "Keep this in your perk slots, it will help you move slightly faster.";break;}
        if ( argument1 == 2 ){return spr_item_joggingshoes1;break;}        
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 55:{
        if ( argument1 == 0 ){return "'Red Jogging Shoes'";break;}
        if ( argument1 == 1 ){return "Keep this in your perk slots, it will help you move slightly faster.";break;}
        if ( argument1 == 2 ){return spr_item_joggingshoes2;break;}        
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 56:{
        if ( argument1 == 0 ){return "'Black Running Shoes'";break;}
        if ( argument1 == 1 ){return "Keep this in your (perks section) will help you move much faster.";break;}
        if ( argument1 == 2 ){return spr_item_runningshoes1;break;}        
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 57:{
        if ( argument1 == 0 ){return "Wood Door";break;}
        if ( argument1 == 1 ){return "This is door can be put in a doorway.";break;}
        if ( argument1 == 2 ){return spr_item_door;break;}        
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 4;break;}
    break;}
    case 58:{
        if ( argument1 == 0 ){return "Wood Bow";break;}
        if ( argument1 == 1 ){return "This bow allows you to make ranged attacks.";break;}
        if ( argument1 == 2 ){return spr_weapon_woodbow;break;}        
        if ( argument1 == 4 ){return true;break;}
        if ( argument1 == 5 ){return 0.2;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 59:{
        if ( argument1 == 0 ){return "Arrow";break;}
        if ( argument1 == 1 ){return "Arrows used by the wood bow.";break;}
        if ( argument1 == 2 ){return spr_item_arrow;break;}        
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 16;break;}
    break;}
    case 60:{
        if ( argument1 == 0 ){return "'Fifty Shades Of Grass'";break;}
        if ( argument1 == 1 ){return "Awarded as a story of dirt and gravel.";break;}
        if ( argument1 == 2 ){return spr_item_bigbook_3;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 Sanity";inst.v_color=c_blue;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 61:{
        if ( argument1 == 0 ){return "Pile Of Dirt";break;}
        if ( argument1 == 1 ){return "A pile of dry dirt.";break;}
        if ( argument1 == 2 ){return spr_item_terrain_dirt1;break;}        
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 62:{
        if ( argument1 == 0 ){return "Pistol (9mm)";break;}
        if ( argument1 == 1 ){return "A low caliber pistol that takes 9mm ammo.";break;}
        if ( argument1 == 2 ){return spr_weapon_9mmpistol;break;}        
        if ( argument1 == 4 ){return true;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 63:{
        if ( argument1 == 0 ){return "9mm Bullet";break;}
        if ( argument1 == 1 ){return "A 9mm bullet for any weapon that takes this type of ammo.";break;}
        if ( argument1 == 2 ){return spr_item_9mmbullet;break;}        
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 48;break;}
    break;}
    case 64:{
        if ( argument1 == 0 ){return "Metal";break;}
        if ( argument1 == 1 ){return "This can be used to craft metal objects.";break;}
        if ( argument1 == 2 ){return spr_item_metal;break;}        
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 16;break;}
    break;}
    case 65:{
        if ( argument1 == 0 ){return "Spring";break;}
        if ( argument1 == 1 ){return "This can be used when crafting.";break;}
        if ( argument1 == 2 ){return spr_item_spring;break;}        
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 16;break;}
    break;}
    case 66:{
        if ( argument1 == 0 ){return "Screw";break;}
        if ( argument1 == 1 ){return "This can be used when crafting.";break;}
        if ( argument1 == 2 ){return spr_item_screw;break;}        
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 16;break;}
    break;}
    case 67:{
        if ( argument1 == 0 ){return "9mm Pistol Magazine";break;}
        if ( argument1 == 1 ){return "This can be used when crafting a 9mm pistol.";break;}
        if ( argument1 == 2 ){return spr_item_9mmpistolmag;break;}       
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 68:{
        if ( argument1 == 0 ){return "Hammer";break;}
        if ( argument1 == 1 ){return "This can be used to deconstruct your structures.";break;}
        if ( argument1 == 2 ){return spr_item_hammer;break;}        
        if ( argument1 == 4 ){return true;break;}
        if ( argument1 == 5 ){return 0.2;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 69:{
        if ( argument1 == 0 ){return "Flashlight";break;}
        if ( argument1 == 1 ){return "This can be used to fight your inner demons.";break;}
        if ( argument1 == 2 ){return spr_item_flashlight;break;}
        if ( argument1 == 4 ){return true;break;}
        if ( argument1 == 5 ){return 0.2;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 70:{
        if ( argument1 == 0 ){return "Raw Bear Meat";break;}
        if ( argument1 == 1 ){return "A big ole' chunk of bear meat.";break;}
        if ( argument1 == 2 ){return spr_item_animalmeat;break;}
        if ( argument1 == 3 ){obj_game.c_health+=2.5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+2.5 HP";inst.v_color=c_green;obj_game.c_food+=10;inst=instance_create(x,y+30,obj_popup_text);inst.text="+10 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 5;break;}
    break;}
    case 71:{
        if ( argument1 == 0 ){return "Sturdy Backpack";break;}
        if ( argument1 == 1 ){return "Keep this in your (perks section) to gain 7 more storage slots.";break;}
        if ( argument1 == 2 ){return spr_item_backpack1;break;}        
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 72:{
        if ( argument1 == 0 ){return "String";break;}
        if ( argument1 == 1 ){return "This can be used when crafting.";break;}
        if ( argument1 == 2 ){return spr_item_string;break;}        
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 16;break;}
    break;}
    case 73:{
        if ( argument1 == 0 ){return "Trout (Fish)";break;}
        if ( argument1 == 1 ){return "A salty and slimey delight!";break;}
        if ( argument1 == 2 ){return spr_item_fish_trout;break;}
        if ( argument1 == 3 ){obj_game.c_health+=5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+5 HP";inst.v_color=c_green;obj_game.c_food+=7.5;inst=instance_create(x,y+30,obj_popup_text);inst.text="+7.5 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 74:{
        if ( argument1 == 0 ){return "Fishing Rod";break;}
        if ( argument1 == 1 ){return "This can be used to catch fish in any body of water.";break;}
        if ( argument1 == 2 ){return spr_item_fishingrod;break;}        
        if ( argument1 == 4 ){return true;break;}
        if ( argument1 == 5 ){return 0.2;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 75:{
        if ( argument1 == 0 ){return "Seabass (Fish)";break;}
        if ( argument1 == 1 ){return "A salty and slimey delight!";break;}
        if ( argument1 == 2 ){return spr_item_fish_seabass;break;}
        if ( argument1 == 3 ){obj_game.c_health+=5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+5 HP";inst.v_color=c_green;obj_game.c_food+=7.5;inst=instance_create(x,y+30,obj_popup_text);inst.text="+7.5 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 76:{
        if ( argument1 == 0 ){return "Halibut (Fish)";break;}
        if ( argument1 == 1 ){return "A salty and slimey delight!";break;}
        if ( argument1 == 2 ){return spr_item_fish_halibut;break;}
        if ( argument1 == 3 ){obj_game.c_health+=5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+5 HP";inst.v_color=c_green;obj_game.c_food+=7.5;inst=instance_create(x,y+30,obj_popup_text);inst.text="+7.5 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 77:{
        if ( argument1 == 0 ){return "Pink Salmon (Fish)";break;}
        if ( argument1 == 1 ){return "A salty and slimey delight!";break;}
        if ( argument1 == 2 ){return spr_item_fish_pinksalmon;break;}
        if ( argument1 == 3 ){obj_game.c_health+=5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+5 HP";inst.v_color=c_green;obj_game.c_food+=7.5;inst=instance_create(x,y+30,obj_popup_text);inst.text="+7.5 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 78:{
        if ( argument1 == 0 ){return "Pillar";break;}
        if ( argument1 == 1 ){return "These pillars can attach to a foundation.";break;}
        if ( argument1 == 2 ){return spr_item_pillar;break;}        
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 4;break;}
    break;}
    case 79:{
        if ( argument1 == 0 ){return "Metal Axe";break;}
        if ( argument1 == 1 ){return "This can be used as a tool of destruction.";break;}
        if ( argument1 == 2 ){return spr_weapon_metalaxe;break;}        
        if ( argument1 == 4 ){return true;break;}
        if ( argument1 == 5 ){return 0.8;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 80:{
        if ( argument1 == 0 ){return "Carrying Lantern";break;}
        if ( argument1 == 1 ){return "Keep this in your (perks section) to put a lantern on your hip.";break;}
        if ( argument1 == 2 ){return spr_item_carryinglantern;break;}        
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.8;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 81:{
        if ( argument1 == 0 ){return "'How To Train A Bear'";break;}
        if ( argument1 == 1 ){return "This is a story about a boy and his bear.";break;}
        if ( argument1 == 2 ){return spr_item_book_3;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 Sanity";inst.v_color=c_blue;check_destroy=true;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 82:{
        if ( argument1 == 0 ){return "Compass";break;}
        if ( argument1 == 1 ){return "This item will assist you when navigating the world.";break;}
        if ( argument1 == 2 ){return spr_item_compass;break;}        
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.8;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 83:{
        if ( argument1 == 0 ){return "'Rusty: Video Game Survival Guide'";break;}
        if ( argument1 == 1 ){return "A guide to beating a survival game from long ago.";break;}
        if ( argument1 == 2 ){return spr_item_book_2;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 Sanity";inst.v_color=c_blue;check_destroy=true;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 84:{
        if ( argument1 == 0 ){return "'Swimming With Seabass' (Volume I)'";break;}
        if ( argument1 == 1 ){return "A self exploration experience revealing ones deepest desires.";break;}
        if ( argument1 == 2 ){return spr_item_bigbook_1;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 Sanity";inst.v_color=c_blue;check_destroy=true;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 85:{
        if ( argument1 == 0 ){return "Stone Pickaxe";break;}
        if ( argument1 == 1 ){return "This can be used as a tool of destruction.";break;}
        if ( argument1 == 2 ){return spr_item_stonepick;break;}        
        if ( argument1 == 4 ){return true;break;}
        if ( argument1 == 5 ){return 0.8;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 86:{
        if ( argument1 == 0 ){return "Metal Pickaxe";break;}
        if ( argument1 == 1 ){return "This can be used as a tool of destruction.";break;}
        if ( argument1 == 2 ){return spr_item_metalpick;break;}        
        if ( argument1 == 4 ){return true;break;}
        if ( argument1 == 5 ){return 0.8;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 87:{
        if ( argument1 == 0 ){return "Raw Deer Meat";break;}
        if ( argument1 == 1 ){return "A big ole' chunk of deer meat.";break;}
        if ( argument1 == 2 ){return spr_item_animalmeat;break;}
        if ( argument1 == 3 ){obj_game.c_health+=2.5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+2.5 HP";inst.v_color=c_green;obj_game.c_food+=10;inst=instance_create(x,y+30,obj_popup_text);inst.text="+10 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 5;break;}
    break;}
    case 88:{
        if ( argument1 == 0 ){return "'The Great Frisbee'";break;}
        if ( argument1 == 1 ){return "A wealthy frisbee finds himself alone with his money.";break;}
        if ( argument1 == 2 ){return spr_item_book_1;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 Sanity";inst.v_color=c_blue;check_destroy=true;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 89:{
        if ( argument1 == 0 ){return "'Lord of the Pies'";break;}
        if ( argument1 == 1 ){return "A plane crashes leaving a group of children alone on a pie island.";break;}
        if ( argument1 == 2 ){return spr_item_book_3;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 Sanity";inst.v_color=c_blue;check_destroy=true;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 90:{
        if ( argument1 == 0 ){return "'Of Toast and Bread'";break;}
        if ( argument1 == 1 ){return "Will two men make it in the tough early years of American industry?";break;}
        if ( argument1 == 2 ){return spr_item_book_2;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 Sanity";inst.v_color=c_blue;check_destroy=true;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 91:{
        if ( argument1 == 0 ){return "'Where The Normal Things Are'";break;}
        if ( argument1 == 1 ){return "A boy has a boring dream about normal creatures in his every day life.";break;}
        if ( argument1 == 2 ){return spr_item_book_1;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 Sanity";inst.v_color=c_blue;check_destroy=true;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 92:{
        if ( argument1 == 0 ){return "Pile Of Sand";break;}
        if ( argument1 == 1 ){return "Dull sand surface.";break;}
        if ( argument1 == 2 ){return spr_item_terrain_sand1;break;}        
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 16;break;}break;
    break;}
    case 93:{
        if ( argument1 == 0 ){return "'The Tom Hank Redemption'";break;}
        if ( argument1 == 1 ){return "Follow Tom Hank's journey through his life as a janitor at a prison.";break;}
        if ( argument1 == 2 ){return spr_item_book_3;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+5 Sanity";inst.v_color=c_blue;check_destroy=true;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 94:{
        if ( argument1 == 0 ){return "'The Godmother'";break;}
        if ( argument1 == 1 ){return "An Italian mother raises a family of criminals.";break;}
        if ( argument1 == 2 ){return spr_item_bigbook_2;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+5 Sanity";inst.v_color=c_blue;check_destroy=true;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 95:{
        if ( argument1 == 0 ){return "'28 Days Prior'";break;}
        if ( argument1 == 1 ){return "A book showing the world just before a massive zombie breakout.";break;}
        if ( argument1 == 2 ){return spr_item_book_28daysprior;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+5 Sanity";inst.v_color=c_blue;check_destroy=true;
        if ( !steam_get_achievement("28 Days Prior") )
        {steam_set_achievement("28 Days Prior")}break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 96:{
        if ( argument1 == 0 ){return "'Above Average Hero 6'";break;}
        if ( argument1 == 1 ){return "A book about a slighty above average blow up doll.";break;}
        if ( argument1 == 2 ){return spr_item_book_1;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+5 Sanity";inst.v_color=c_blue;check_destroy=true;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 97:{
        if ( argument1 == 0 ){return "'The Silence of the Goats'";break;}
        if ( argument1 == 1 ){return "A book about a serial killer goat.";break;}
        if ( argument1 == 2 ){return spr_item_book_3;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+5 Sanity";inst.v_color=c_blue;check_destroy=true;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 98:{
        if ( argument1 == 0 ){return "'Raiders of the Old Park'";break;}
        if ( argument1 == 1 ){return "Follow Oklahoma Jones on his joureny to the park.";break;}
        if ( argument1 == 2 ){return spr_item_book_2;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+5 Sanity";inst.v_color=c_blue;check_destroy=true;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 99:{
        if ( argument1 == 0 ){return "Bandage";break;}
        if ( argument1 == 1 ){return "Can be used to stop bleeding.";break;}
        if ( argument1 == 2 ){return spr_item_bandage;break;}
        if ( argument1 == 3 ){if (global.pl_bleeding>0){global.pl_bleeding = 0;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="Stopped Bleeding";inst.v_color=c_green;check_destroy=true;}
        else{if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="Not Bleeding";inst.v_color=c_green;}}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 100:{
        if ( argument1 == 0 ){return "Small Table";break;}
        if ( argument1 == 1 ){return "Used as a display for items, really brightens your living room.";break;}
        if ( argument1 == 2 ){return spr_item_smalltable;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 101:{
        if ( argument1 == 0 ){return "Empty Bottle";break;}
        if ( argument1 == 1 ){return "An empty bottle of nothing. It can be refilled with water.";break;}
        if ( argument1 == 2 ){return spr_item_emptybottle;break;}
        if ( argument1 == 4 ){return true;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 102:{
        if ( argument1 == 0 ){return "Warding Stick";break;}
        if ( argument1 == 1 ){return "An odd feeling of resistance emanates from it.";break;}
        if ( argument1 == 2 ){return spr_item_wardingstick;break;}
        if ( argument1 == 4 ){return true;break;}
        if ( argument1 == 5 ){return 0.15;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 103:{
        if ( argument1 == 0 ){return "Wood Chair";break;}
        if ( argument1 == 1 ){return "It's a nice place to sit.";break;}
        if ( argument1 == 2 ){return spr_item_woodchair;break;}        
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 104:{
        if ( argument1 == 0 ){return "Wood Chest";break;}
        if ( argument1 == 1 ){return "A decently sized chest for all your storage needs!";break;}
        if ( argument1 == 2 ){return spr_item_woodchest;break;}        
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 105:{
        if ( argument1 == 0 ){return "Bear Hide Mantle";break;}
        if ( argument1 == 1 ){return "Can be worn to protect yourself against physical harm.";break;}
        if ( argument1 == 2 ){return spr_item_bearhide_mantle;break;}
        if ( argument1 == 3 ){if(global.equip_list[| 1]!=argument0){
        global.clothing_body="Bear Hide Mantle";global.equip_list[| 1]=argument0;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="Equipped";inst.v_color=c_white;}
        else{global.clothing_body="";global.equip_list[| 1]=0;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="Unequipped";inst.v_color=c_white;}break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 106:{
        if ( argument1 == 0 ){return "Hide Armor Mk1";break;}
        if ( argument1 == 1 ){return "Can be worn to protect yourself against physical harm.";break;}
        if ( argument1 == 2 ){return spr_item_hidearmor_mk1;break;}
        if ( argument1 == 3 ){if(global.equip_list[| 1]!=argument0){
        global.clothing_body="Hide Armor Mk1";global.equip_list[| 1]=argument0;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="Equipped";inst.v_color=c_white;}
        else{global.clothing_body="";global.equip_list[| 1]=0;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="Unequipped";inst.v_color=c_white;}break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 107:{
        if ( argument1 == 0 ){return "Hide Cap Mk1";break;}
        if ( argument1 == 1 ){return "Can be worn to protect yourself against physical harm.";break;}
        if ( argument1 == 2 ){return spr_item_hidecap_mk1;break;}
        if ( argument1 == 3 ){if(global.equip_list[| 0]!=argument0){
        global.clothing_head="Hide Cap";global.equip_list[| 0]=argument0;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="Equipped";inst.v_color=c_white;}
        else{global.clothing_head="";global.equip_list[| 0]=0;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="Unequipped";inst.v_color=c_white;}break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 108:{
        if ( argument1 == 0 ){return "Wolf Hood";break;}
        if ( argument1 == 1 ){return "Can be worn to protect yourself against physical harm.";break;}
        if ( argument1 == 2 ){return spr_item_wolfhood;break;}
        if ( argument1 == 3 ){if(global.equip_list[| 0]!=argument0){
        global.clothing_head="Wolf Hood";global.equip_list[| 0]=argument0;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="Equipped";inst.v_color=c_white;}
        else{global.clothing_head="";global.equip_list[| 0]=0;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="Unequipped";inst.v_color=c_white;}break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 109:{
        if ( argument1 == 0 ){return "Flag (Red)";break;}
        if ( argument1 == 1 ){return "A flag used to place waypoints for the compass.";break;}
        if ( argument1 == 2 ){return spr_item_flag_red;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 110:{
        if ( argument1 == 0 ){return "Deer Antler";break;}
        if ( argument1 == 1 ){return "This can be used as a tool of destruction.";break;}
        if ( argument1 == 2 ){return spr_weapon_deerantler;break;}     
        if ( argument1 == 4 ){return true;break;}
        if ( argument1 == 5 ){return 0.15;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 111:{
        if ( argument1 == 0 ){return "'Game Of Toads'";break;}
        if ( argument1 == 1 ){return "A bunch of stuck up toads slaughter each other in a last stand#deathmatch for control of a pond.";break;}
        if ( argument1 == 2 ){return spr_item_book_1;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 Sanity";inst.v_color=c_blue;check_destroy=true;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 112:{
        if ( argument1 == 0 ){return "'Jordan Greenman, White Mesa'";break;}
        if ( argument1 == 1 ){return "A scientist turns from a silent man to a mute with great combat#skills and way too much blood on his hands.";break;}
        if ( argument1 == 2 ){return spr_item_book_2;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=15;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+15 Sanity";inst.v_color=c_blue;check_destroy=true;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 113:{
        if ( argument1 == 0 ){return "'Eat, Build, Read, Repeat'";break;}
        if ( argument1 == 1 ){return "Proclaimed by many as one of the greatest books of it's time.#A guide to survival in the wilderness portrayed as a life style.";break;}
        if ( argument1 == 2 ){return spr_item_book_3;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=15;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+15 Sanity";inst.v_color=c_blue;check_destroy=true;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 114:{
        if ( argument1 == 0 ){return "'The Walking Bed'";break;}
        if ( argument1 == 1 ){return "A fantasy story about a bed that grows legs and walks across#the land eating other beds.";break;}
        if ( argument1 == 2 ){return spr_item_book_1;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+5 Sanity";inst.v_color=c_blue;check_destroy=true;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 115:{
        if ( argument1 == 0 ){return "Flag (Blue)";break;}
        if ( argument1 == 1 ){return "A flag used to place waypoints for the compass.";break;}
        if ( argument1 == 2 ){return spr_item_flag_blue;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 116:{
        if ( argument1 == 0 ){return "Flag (Green)";break;}
        if ( argument1 == 1 ){return "A flag used to place waypoints for the compass.";break;}
        if ( argument1 == 2 ){return spr_item_flag_green;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 117:{
        if ( argument1 == 0 ){return "Flag (Pink)";break;}
        if ( argument1 == 1 ){return "A flag used to place waypoints for the compass.";break;}
        if ( argument1 == 2 ){return spr_item_flag_pink;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 118:{
        if ( argument1 == 0 ){return "Flag (Purple)";break;}
        if ( argument1 == 1 ){return "A flag used to place waypoints for the compass.";break;}
        if ( argument1 == 2 ){return spr_item_flag_purple;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 119:{
        if ( argument1 == 0 ){return "Flag (Yellow)";break;}
        if ( argument1 == 1 ){return "A flag used to place waypoints for the compass.";break;}
        if ( argument1 == 2 ){return spr_item_flag_yellow;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 120:{
        if ( argument1 == 0 ){return "Flag (Orange)";break;}
        if ( argument1 == 1 ){return "A flag used to place waypoints for the compass.";break;}
        if ( argument1 == 2 ){return spr_item_flag_orange;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 121:{
        if ( argument1 == 0 ){return "Flag (Cyan)";break;}
        if ( argument1 == 1 ){return "A flag used to place waypoints for the compass.";break;}
        if ( argument1 == 2 ){return spr_item_flag_cyan;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 122:{
        if ( argument1 == 0 ){return "Flag (White)";break;}
        if ( argument1 == 1 ){return "A flag used to place waypoints for the compass.";break;}
        if ( argument1 == 2 ){return spr_item_flag_white;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 123:{
        if ( argument1 == 0 ){return "Flag (Black)";break;}
        if ( argument1 == 1 ){return "A flag used to place waypoints for the compass.";break;}
        if ( argument1 == 2 ){return spr_item_flag_black;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 124:{
        if ( argument1 == 0 ){return "Corn Seeds";break;}
        if ( argument1 == 1 ){return "Seeds that when placed will begin to grow a stalk of corn.";break;}
        if ( argument1 == 2 ){return spr_item_corn_seed1;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 16;break;}
    break;}
    case 125:{
        if ( argument1 == 0 ){return "Corn";break;}
        if ( argument1 == 1 ){return "Fresh corn! Each bite is delicious!";break;}
        if ( argument1 == 2 ){return spr_item_corn;break;}
        if ( argument1 == 3 ){obj_game.c_health+=2.5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+2.5 HP";inst.v_color=c_green;obj_game.c_food+=6;inst=instance_create(x,y+30,obj_popup_text);inst.text="+6 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 126:{
        if ( argument1 == 0 ){return "Potato";break;}
        if ( argument1 == 1 ){return "Fresh potato! Each bite is delicious!#You can even grow more!";break;}
        if ( argument1 == 2 ){return spr_item_potato;break;}
        if ( argument1 == 3 ){obj_game.c_health+=2.5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+2.5 HP";inst.v_color=c_green;obj_game.c_food+=6;inst=instance_create(x,y+30,obj_popup_text);inst.text="+6 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 127:{
        if ( argument1 == 0 ){return "Frying Pan";break;}
        if ( argument1 == 1 ){return "This can be used as a tool of destruction.";break;}
        if ( argument1 == 2 ){return spr_weapon_fryingpan;break;}
        if ( argument1 == 4 ){return true;break;}
        if ( argument1 == 5 ){return 0.8;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 128:{
        if ( argument1 == 0 ){return "Wooden Sword";break;}
        if ( argument1 == 1 ){return "Good weapon for training and tearing your way through paper enemies!";break;}
        if ( argument1 == 2 ){return spr_weapon_woodsword;break;}
        if ( argument1 == 4 ){return true;break;}
        if ( argument1 == 5 ){return 0.8;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 129:{
        if ( argument1 == 0 ){return "Light Metal Sword";break;}
        if ( argument1 == 1 ){return "Light but swift, this blade can tear down many foes!";break;}
        if ( argument1 == 2 ){return spr_weapon_lightmetalsword;break;}
        if ( argument1 == 4 ){return true;break;}
        if ( argument1 == 5 ){return 0.8;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 130:{
        if ( argument1 == 0 ){return "Heavy Metal Sword";break;}
        if ( argument1 == 1 ){return "This blade can tear down many foes!";break;}
        if ( argument1 == 2 ){return spr_weapon_heavymetalsword;break;}
        if ( argument1 == 4 ){return true;break;}
        if ( argument1 == 5 ){return 0.8;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 131:{
        if ( argument1 == 0 ){return "Tomato";break;}
        if ( argument1 == 1 ){return "Fresh tomato! Each bite is juicy and delicious!";break;}
        if ( argument1 == 2 ){return spr_item_tomato;break;}
        if ( argument1 == 3 ){obj_game.c_health+=4;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+4 HP";inst.v_color=c_green;obj_game.c_food+=5;inst=instance_create(x,y+30,obj_popup_text);inst.text="+5 Food";inst.v_color=obj_game_render.col_orange;obj_game.c_thirst+=2.5;inst=instance_create(x,y+60,obj_popup_text);inst.text="+2.5 Thirst";inst.v_color=c_teal;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 132:{
        if ( argument1 == 0 ){return "Tomato Seeds";break;}
        if ( argument1 == 1 ){return "Seeds that when placed will begin to grow tomatoes.";break;}
        if ( argument1 == 2 ){return spr_item_tomato_seed1;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 16;break;}
    break;}
    case 133:{
        if ( argument1 == 0 ){return "Forging Table";break;}
        if ( argument1 == 1 ){return "Used to craft more complex metal items.";break;}
        if ( argument1 == 2 ){return spr_item_forgingtable;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 134:{
        if ( argument1 == 0 ){return "Deconstruction Table";break;}
        if ( argument1 == 1 ){return "Used to take apart items.";break;}
        if ( argument1 == 2 ){return spr_item_deconstructtable;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 135:{
        if ( argument1 == 0 ){return "Cooked Wolf Meat";break;}
        if ( argument1 == 1 ){return "A well cooked peice of wolf meat.";break;}
        if ( argument1 == 2 ){return spr_item_cookedanimalmeat;break;}
        if ( argument1 == 3 ){obj_game.c_health+=20;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+20 HP";inst.v_color=c_green;obj_game.c_food+=40;inst=instance_create(x,y+30,obj_popup_text);inst.text="+40 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 5;break;}
    break;}
    case 136:{
        if ( argument1 == 0 ){return "Cooked Bear Meat";break;}
        if ( argument1 == 1 ){return "A well cooked peice of bear meat.";break;}
        if ( argument1 == 2 ){return spr_item_cookedanimalmeat;break;}
        if ( argument1 == 3 ){obj_game.c_health+=20;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+20 HP";inst.v_color=c_green;obj_game.c_food+=40;inst=instance_create(x,y+30,obj_popup_text);inst.text="+40 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 5;break;}
    break;}
    case 137:{
        if ( argument1 == 0 ){return "Cooked Deer Meat";break;}
        if ( argument1 == 1 ){return "A well cooked peice of deer meat.";break;}
        if ( argument1 == 2 ){return spr_item_cookedanimalmeat;break;}
        if ( argument1 == 3 ){obj_game.c_health+=20;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+20 HP";inst.v_color=c_green;obj_game.c_food+=40;inst=instance_create(x,y+30,obj_popup_text);inst.text="+40 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 5;break;}
    break;}
    case 138:{
        if ( argument1 == 0 ){return "Wallet";break;}
        if ( argument1 == 1 ){return "A quaint and somewhat worn out wallet.";break;}
        if ( argument1 == 2 ){return spr_item_wallet;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 139:{
        if ( argument1 == 0 ){return "Rag";break;}
        if ( argument1 == 1 ){return "A dirty and used rag.";break;}
        if ( argument1 == 2 ){return spr_item_rag;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 140:{
        if ( argument1 == 0 ){return "Cooked Trout (Fish)";break;}
        if ( argument1 == 1 ){return "A crunchy, salty, and slimey delight!";break;}
        if ( argument1 == 2 ){return spr_item_fish_trout_cooked;break;}
        if ( argument1 == 3 ){obj_game.c_health+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 HP";inst.v_color=c_green;obj_game.c_food+=15;inst=instance_create(x,y+30,obj_popup_text);inst.text="+15 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 141:{
        if ( argument1 == 0 ){return "Cooked Seabass (Fish)";break;}
        if ( argument1 == 1 ){return "A crunchy, salty, and slimey delight!";break;}
        if ( argument1 == 2 ){return spr_item_fish_seabass_cooked;break;}
        if ( argument1 == 3 ){obj_game.c_health+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 HP";inst.v_color=c_green;obj_game.c_food+=15;inst=instance_create(x,y+30,obj_popup_text);inst.text="+15 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 142:{
        if ( argument1 == 0 ){return "Cooked Halibut (Fish)";break;}
        if ( argument1 == 1 ){return "A crunchy, salty, and slimey delight!";break;}
        if ( argument1 == 2 ){return spr_item_fish_halibut_cooked;break;}
        if ( argument1 == 3 ){obj_game.c_health+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 HP";inst.v_color=c_green;obj_game.c_food+=15;inst=instance_create(x,y+30,obj_popup_text);inst.text="+15 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 143:{
        if ( argument1 == 0 ){return "Cooked Pink Salmon (Fish)";break;}
        if ( argument1 == 1 ){return "A crunchy, salty, and slimey delight!";break;}
        if ( argument1 == 2 ){return spr_item_fish_pinksalmon_cooked;break;}
        if ( argument1 == 3 ){obj_game.c_health+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 HP";inst.v_color=c_green;obj_game.c_food+=15;inst=instance_create(x,y+30,obj_popup_text);inst.text="+15 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 144:{
        if ( argument1 == 0 ){return "Pencil";break;}
        if ( argument1 == 1 ){return "A cheap and flimsy pencil.";break;}
        if ( argument1 == 2 ){return spr_item_pencil;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 145:{
        if ( argument1 == 0 ){return "Wood Photo Frame";break;}
        if ( argument1 == 1 ){return "An old style photo frame made from thin wood.";break;}
        if ( argument1 == 2 ){return spr_item_woodphotoframe;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 146:{
        if ( argument1 == 0 ){return "Wood Wash Board";break;}
        if ( argument1 == 1 ){return "Used to clean dirty cloth and rags.";break;}
        if ( argument1 == 2 ){return spr_item_woodwashboard;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 4;break;}
    break;}
    case 147:{
        if ( argument1 == 0 ){return "Towel";break;}
        if ( argument1 == 1 ){return "Used to dry surfaces.";break;}
        if ( argument1 == 2 ){return spr_item_towel;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 148:{
        if ( argument1 == 0 ){return "Small Bag";break;}
        if ( argument1 == 1 ){return "Used to carry small objects. Not very useful to a real adventurer.";break;}
        if ( argument1 == 2 ){return spr_item_smallbag;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 149:{
        if ( argument1 == 0 ){return "Blue Sock";break;}
        if ( argument1 == 1 ){return "Worn by a similar creature.";break;}
        if ( argument1 == 2 ){return spr_item_bluesock;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 150:{
        if ( argument1 == 0 ){return "Red Sock";break;}
        if ( argument1 == 1 ){return "Worn by a similar creature.";break;}
        if ( argument1 == 2 ){return spr_item_redsock;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 8;break;}
    break;}
    case 151:{
        if ( argument1 == 0 ){return "Cloth Headwrap";break;}
        if ( argument1 == 1 ){return "Can be worn to protect yourself against harsh weather.";break;}
        if ( argument1 == 2 ){return spr_item_cloth_headwrap;break;}
        if ( argument1 == 3 ){if(global.equip_list[| 0]!=argument0){
        global.clothing_head="Cloth Headwrap";global.equip_list[| 0]=argument0;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="Equipped";inst.v_color=c_white;}
        else{global.clothing_head="";global.equip_list[| 0]=0;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="Unequipped";inst.v_color=c_white;}break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 152:{
        if ( argument1 == 0 ){return "Orange Juice";break;}
        if ( argument1 == 1 ){return "Sweet and delicious orange juice.";break;}
        if ( argument1 == 2 ){return spr_item_orangejuice;break;}
        if ( argument1 == 3 ){obj_game.c_health+=5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+5 HP";inst.v_color=c_green;obj_game.c_food+=5;inst=instance_create(x,y+30,obj_popup_text);inst.text="+5 Food";inst.v_color=obj_game_render.col_orange;obj_game.c_thirst+=7.5;inst=instance_create(x,y+60,obj_popup_text);inst.text="+7.5 Thirst";inst.v_color=c_teal;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 4;break;}
    break;}
    case 153:{
        if ( argument1 == 0 ){return "Rice Milk";break;}
        if ( argument1 == 1 ){return "Bland but healthy rice milk.";break;}
        if ( argument1 == 2 ){return spr_item_ricemilk;break;}
        if ( argument1 == 3 ){obj_game.c_health+=2.5;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+2.5 HP";inst.v_color=c_green;obj_game.c_food+=2.5;inst=instance_create(x,y+30,obj_popup_text);inst.text="+2.5 Food";inst.v_color=obj_game_render.col_orange;obj_game.c_thirst+=6.5;inst=instance_create(x,y+60,obj_popup_text);inst.text="+6.5 Thirst";inst.v_color=c_teal;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 4;break;}
    break;}
    case 154:{
        if ( argument1 == 0 ){return "Leaf";break;}
        if ( argument1 == 1 ){return "Can be used to fuel fires.";break;}
        if ( argument1 == 2 ){return spr_item_leaf;break;}
        if ( argument1 == 4 ){return false;break;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 64;break;}
    break;}
    case 155:{
        if ( argument1 == 0 ){return "'The Haze'";break;}
        if ( argument1 == 1 ){return "A blurred past leads to a future in which Haze must#overcome the environment and his own mental dilemma.";break;}
        if ( argument1 == 2 ){return spr_item_book_3;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 Sanity";inst.v_color=c_blue;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 156:{
        if ( argument1 == 0 ){return "'Camo's Ham'";break;}
        if ( argument1 == 1 ){return "A story about a very unique piece of ham that brings#old rivals back together for a final battle.";break;}
        if ( argument1 == 2 ){return spr_item_bigbook_2;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 Sanity";inst.v_color=c_blue;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 157:{
        if ( argument1 == 0 ){return "'My Dear Pepe'";break;}
        if ( argument1 == 1 ){return "Love has never been so hard. Pepe is forced to#leave everything behind so he can avenge his best friend.";break;}
        if ( argument1 == 2 ){return spr_item_book_mydearpepe;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 Sanity";inst.v_color=c_blue;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 158:{
        if ( argument1 == 0 ){return "'How To Get An Achievement'";break;}
        if ( argument1 == 1 ){return "A guide on how to earn achievements in both#life and video games.";break;}
        if ( argument1 == 2 ){return spr_item_book_howtogetanachievement;break;}
        if ( argument1 == 3 ){obj_game.c_sanity+=10;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+10 Sanity";inst.v_color=c_blue;check_destroy=true;
        if ( !steam_get_achievement("How To Get An Achievement") )
        {steam_set_achievement("How To Get An Achievement")}break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 1;break;}
    break;}
    case 159:{
        if ( argument1 == 0 ){return "Red Berries";break;}
        if ( argument1 == 1 ){return "These berries are delicious and healthy.";break;}
        if ( argument1 == 2 ){return spr_item_redberry;break;}
        if ( argument1 == 3 ){obj_game.c_health+=1;if(instance_exists(obj_inv_slot)){inst=instance_create(x,y,obj_popup_text)}else{inst=instance_create(x,y,obj_popup_resourcegain);};inst.text="+1 HP";inst.v_color=c_green;obj_game.c_food+=1.5;inst=instance_create(x,y+30,obj_popup_text);inst.text="+1.5 Food";inst.v_color=obj_game_render.col_orange;check_destroy=true;break;}
        if ( argument1 == 4 ){return false;}
        if ( argument1 == 5 ){return 0.1;break;}
        if ( argument1 == 6 ){return 48;break;}
    break;}
}

if ( instance_exists(obj_inv_slot) == true ){
if ( check_destroy == true )
{
item_id=0;item_sprite=item_get_data(item_id,2);
with(obj_inv_slot){alarm[0]=1;}
        global.get_stack = 0;
        if ( other.inv_part == 0 ){
            global.get_stack = ds_grid_get(global.c_stack_pack,grid_x,grid_y);
            ds_grid_set(global.c_stack_pack,grid_x,grid_y,global.get_stack-1);
                if ( global.get_stack-1 == 0 )
                {
                ds_grid_set(global.c_inventory_pack,grid_x,grid_y,0);
                }
            }
            if ( inv_part == 1 ){
            global.get_stack = ds_grid_get(global.c_stack_hotbar,grid_x,grid_y);
            ds_grid_set(global.c_stack_hotbar,grid_x,grid_y,global.get_stack-1);
                if ( global.get_stack-1 == 0 )
                {
                ds_grid_set(global.c_inventory_hotbar,grid_x,grid_y,0);
                }
            }
            if ( inv_part == 2 ){
            global.get_stack = ds_grid_get(global.c_stack_clothing,grid_x,grid_y);
            ds_grid_set(global.c_stack_clothing,grid_x,grid_y,global.get_stack-1);
                if ( global.get_stack-1 == 0 )
                {
                ds_grid_set(global.c_inventory_clothing,grid_x,grid_y,0);
                }
}
    if ( inv_part == 3 ){
            global.get_stack = ds_grid_get(global.c_stack_storage,grid_x,grid_y);
            ds_grid_set(global.c_stack_storage,grid_x,grid_y,global.get_stack-1);
                if ( global.get_stack-1 == 0 )
                {
                ds_grid_set(global.c_inv_storage,grid_x,grid_y,0);
                }
            with(global.storage_id)
            {
            ds_grid_copy(c_inv,global.c_inv_storage);
            ds_grid_copy(c_stack,global.c_stack_storage);
            }
    }
}}
else
{
if ( check_destroy == true ){
global.get_stack = ds_grid_get(global.c_stack_hotbar,obj_game.v_hotbar_set,0);
ds_grid_set(global.c_stack_hotbar,obj_game.v_hotbar_set,0,global.get_stack-1);
if ( global.get_stack-1 == 0 )
{ds_grid_set(global.c_inventory_hotbar,obj_game.v_hotbar_set,0,0);}}
}
