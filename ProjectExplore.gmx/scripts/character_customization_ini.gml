/// character_customization_ini()

global.ds_char_skin_noitem = ds_list_create();
global.ds_char_skin_item = ds_list_create();
global.ds_char_skin_noarms = ds_list_create();
global.ds_char_arms = ds_list_create();
global.ds_char_shirt = ds_list_create();
global.ds_char_hair1 = ds_list_create();
global.ds_char_hair2 = ds_list_create();
global.ds_char_hair3 = ds_list_create();
global.ds_char_hair4 = ds_list_create();
global.ds_char_hair5 = ds_list_create();
global.ds_char_hair6 = ds_list_create();
global.ds_char_hair7 = ds_list_create();
global.ds_char_hair8 = ds_list_create();
global.ds_char_hair9 = ds_list_create();
global.ds_char_legs = ds_list_create();
global.ds_char_items = ds_list_create();

// Skins

global.ds_char_skin_noitem[| 0] = asset_get_index("spr_pl_skin_noitem1");
global.ds_char_skin_noitem[| 1] = asset_get_index("spr_pl_skin_noitem2");
global.ds_char_skin_noitem[| 2] = asset_get_index("spr_pl_skin_noitem3");
global.ds_char_skin_noitem[| 3] = asset_get_index("spr_pl_skin_noitem4");

global.ds_char_skin_item[| 0] = asset_get_index("spr_pl_skin_item1");
global.ds_char_skin_item[| 1] = asset_get_index("spr_pl_skin_item2");
global.ds_char_skin_item[| 2] = asset_get_index("spr_pl_skin_item3");
global.ds_char_skin_item[| 3] = asset_get_index("spr_pl_skin_item4");

global.ds_char_skin_noarms[| 0] = asset_get_index("spr_pl_skin_noarms1");
global.ds_char_skin_noarms[| 1] = asset_get_index("spr_pl_skin_noarms2");
global.ds_char_skin_noarms[| 2] = asset_get_index("spr_pl_skin_noarms3");
global.ds_char_skin_noarms[| 3] = asset_get_index("spr_pl_skin_noarms4");

// Arms

global.ds_char_arms[| 0] = asset_get_index("spr_pl_arms1");
global.ds_char_arms[| 1] = asset_get_index("spr_pl_arms2");
global.ds_char_arms[| 2] = asset_get_index("spr_pl_arms3");
global.ds_char_arms[| 3] = asset_get_index("spr_pl_arms4");

// Shirts

global.ds_char_shirt[| 0] = asset_get_index("spr_pl_shirt_white");
global.ds_char_shirt[| 1] = asset_get_index("spr_pl_shirt_black");
global.ds_char_shirt[| 2] = asset_get_index("spr_pl_shirt_blue");
global.ds_char_shirt[| 3] = asset_get_index("spr_pl_shirt_green");
global.ds_char_shirt[| 4] = asset_get_index("spr_pl_shirt_brown");
global.ds_char_shirt[| 5] = asset_get_index("spr_pl_shirt_pink");
global.ds_char_shirt[| 6] = asset_get_index("spr_pl_shirt_purple");
global.ds_char_shirt[| 7] = asset_get_index("spr_pl_shirt_red");
global.ds_char_shirt[| 8] = asset_get_index("spr_pl_tank_white");
global.ds_char_shirt[| 9] = asset_get_index("spr_pl_tank_black");
global.ds_char_shirt[| 10] = asset_get_index("spr_pl_tank_blue");
global.ds_char_shirt[| 11] = asset_get_index("spr_pl_tank_green");
global.ds_char_shirt[| 12] = asset_get_index("spr_pl_tank_brown");
global.ds_char_shirt[| 13] = asset_get_index("spr_pl_tank_pink");
global.ds_char_shirt[| 14] = asset_get_index("spr_pl_tank_purple");
global.ds_char_shirt[| 15] = asset_get_index("spr_pl_tank_red");

// Legs

global.ds_char_legs[| 0] = asset_get_index("spr_pl_legs_black");
global.ds_char_legs[| 1] = asset_get_index("spr_pl_legs_blue");
global.ds_char_legs[| 2] = asset_get_index("spr_pl_legs_brown");
global.ds_char_legs[| 3] = asset_get_index("spr_pl_legs_green");
global.ds_char_legs[| 4] = asset_get_index("spr_pl_legs_purple");

// Hair

global.ds_char_hair1[| 0] = asset_get_index("spr_pl_hair_thedrake1");
global.ds_char_hair1[| 1] = asset_get_index("spr_pl_hair_thedrake2");
global.ds_char_hair1[| 2] = asset_get_index("spr_pl_hair_thedrake3");
global.ds_char_hair1[| 3] = asset_get_index("spr_pl_hair_thedrake4");

global.ds_char_hair2[| 0] = asset_get_index("spr_pl_hair_thejoe1");
global.ds_char_hair2[| 1] = asset_get_index("spr_pl_hair_thejoe2");
global.ds_char_hair2[| 2] = asset_get_index("spr_pl_hair_thejoe3");
global.ds_char_hair2[| 3] = asset_get_index("spr_pl_hair_thejoe4");

global.ds_char_hair3[| 0] = asset_get_index("spr_pl_hair_themane1");
global.ds_char_hair3[| 1] = asset_get_index("spr_pl_hair_themane2");
global.ds_char_hair3[| 2] = asset_get_index("spr_pl_hair_themane3");
global.ds_char_hair3[| 3] = asset_get_index("spr_pl_hair_themane4");

global.ds_char_hair4[| 0] = asset_get_index("spr_pl_hair_thematador1");
global.ds_char_hair4[| 1] = asset_get_index("spr_pl_hair_thematador2");
global.ds_char_hair4[| 2] = asset_get_index("spr_pl_hair_thematador3");
global.ds_char_hair4[| 3] = asset_get_index("spr_pl_hair_thematador4");

global.ds_char_hair5[| 0] = asset_get_index("spr_pl_hair_thescruff1");
global.ds_char_hair5[| 1] = asset_get_index("spr_pl_hair_thescruff2");
global.ds_char_hair5[| 2] = asset_get_index("spr_pl_hair_thescruff3");
global.ds_char_hair5[| 3] = asset_get_index("spr_pl_hair_thescruff4");

global.ds_char_hair6[| 0] = asset_get_index("spr_pl_hair_theglobetrotter1");
global.ds_char_hair6[| 1] = asset_get_index("spr_pl_hair_theglobetrotter2");
global.ds_char_hair6[| 2] = asset_get_index("spr_pl_hair_theglobetrotter3");
global.ds_char_hair6[| 3] = asset_get_index("spr_pl_hair_theglobetrotter4");

global.ds_char_hair7[| 0] = asset_get_index("spr_pl_hair_thehorseshoe1");
global.ds_char_hair7[| 1] = asset_get_index("spr_pl_hair_thehorseshoe2");
global.ds_char_hair7[| 2] = asset_get_index("spr_pl_hair_thehorseshoe3");
global.ds_char_hair7[| 3] = asset_get_index("spr_pl_hair_thehorseshoe4");

global.ds_char_hair8[| 0] = asset_get_index("spr_pl_hair_theeraser1");
global.ds_char_hair8[| 1] = asset_get_index("spr_pl_hair_theeraser2");
global.ds_char_hair8[| 2] = asset_get_index("spr_pl_hair_theeraser3");
global.ds_char_hair8[| 3] = asset_get_index("spr_pl_hair_theeraser4");

global.ds_char_hair9[| 0] = asset_get_index("spr_pl_hair_thewisp1");
global.ds_char_hair9[| 1] = asset_get_index("spr_pl_hair_thewisp2");
global.ds_char_hair9[| 2] = asset_get_index("spr_pl_hair_thewisp3");
global.ds_char_hair9[| 3] = asset_get_index("spr_pl_hair_thewisp4");

// Items

global.ds_char_items[| 0] = asset_get_index("spr_pl_item_fishing");
global.ds_char_items[| 1] = asset_get_index("spr_pl_item_pistol");
