/// scr_weapon_ini()
global.wp_data = ds_grid_create(1,1);
/*
global.wp_data = ds_grid_create(ITEM_TOTAL+1,4);

  // Format var[# item_id,type]                \\
 // types, 0 = attack damage, 1 = knockback cd, \\
// 2 = knockback speed, 3 = knockback time       \\

// Rock
global.wp_data[# 4,0] = 15;
global.wp_data[# 4,1] = 20;
global.wp_data[# 4,2] = 4;
global.wp_data[# 4,3] = 15;
// Screw Driver
global.wp_data[# 10,0] = 20;
global.wp_data[# 10,1] = 10;
global.wp_data[# 10,2] = 4;
global.wp_data[# 10,3] = 10;
// Knife
global.wp_data[# 12,0] = 25;
global.wp_data[# 12,1] = 10;
global.wp_data[# 12,2] = 4;
global.wp_data[# 12,3] = 10;
// Stone Axe
global.wp_data[# 30,0] = 20;
global.wp_data[# 30,1] = 25;
global.wp_data[# 30,2] = 4;
global.wp_data[# 30,3] = 15;
// Crowbar
global.wp_data[# 51,0] = 25;
global.wp_data[# 51,1] = 25;
global.wp_data[# 51,2] = 4;
global.wp_data[# 51,3] = 15;
// Arrow
global.wp_data[# 59,0] = 40;
global.wp_data[# 59,1] = 15;
global.wp_data[# 59,2] = 4;
global.wp_data[# 59,3] = 10;
// 9mm Bullet
global.wp_data[# 63,0] = 35;
global.wp_data[# 63,1] = 20;
global.wp_data[# 63,2] = 4;
global.wp_data[# 63,3] = 20;
// Metal Axe
global.wp_data[# 79,0] = 25;
global.wp_data[# 79,1] = 25;
global.wp_data[# 79,2] = 4;
global.wp_data[# 79,3] = 25;
// Stone Pickaxe
global.wp_data[# 85,0] = 20;
global.wp_data[# 85,1] = 25;
global.wp_data[# 85,2] = 5;
global.wp_data[# 85,3] = 25;
// Metal Pickaxe
global.wp_data[# 86,0] = 25;
global.wp_data[# 86,1] = 25;
global.wp_data[# 86,2] = 6;
global.wp_data[# 86,3] = 25;
// Deer Antler
global.wp_data[# 110,0] = 30;
global.wp_data[# 110,1] = 30;
global.wp_data[# 110,2] = 6;
global.wp_data[# 110,3] = 30;
// Frying Pan
global.wp_data[# 127,0] = 20;
global.wp_data[# 127,1] = 25;
global.wp_data[# 127,2] = 5;
global.wp_data[# 127,3] = 25;
// Wooden Sword
global.wp_data[# 128,0] = 5;
global.wp_data[# 128,1] = 15;
global.wp_data[# 128,2] = 4;
global.wp_data[# 128,3] = 15;
// Light Metal Sword
global.wp_data[# 129,0] = 25;
global.wp_data[# 129,1] = 45;
global.wp_data[# 129,2] = 4;
global.wp_data[# 129,3] = 30;
// Heavy Metal Sword
global.wp_data[# 130,0] = 35;
global.wp_data[# 130,1] = 60;
global.wp_data[# 130,2] = 5;
global.wp_data[# 130,3] = 30;
