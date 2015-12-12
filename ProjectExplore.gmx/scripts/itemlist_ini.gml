/// itemlist_ini()
// Type, 0 = resource, 1 = food, 2 = weapon, 3 = storage, 4 = lighting, 5 = stucture, 6 = sanity, 7 = rare drops, 8 = useless
global.c_spawnlist_0 = ds_list_create();
global.c_spawnlist_1 = ds_list_create();
global.c_spawnlist_2 = ds_list_create();
global.c_spawnlist_3 = ds_list_create();
global.c_spawnlist_4 = ds_list_create();
global.c_spawnlist_5 = ds_list_create();
global.c_spawnlist_6 = ds_list_create();
global.c_spawnlist_7 = ds_list_create();
global.c_spawnlist_8 = ds_list_create();

ds_list_add(global.c_spawnlist_0,3,17,26,27,65,66,72,64,99);

ds_list_add(global.c_spawnlist_1,1,2,14,15,16,18,19,20,46,47,48,49,50,52,152);
ds_list_add(global.c_spawnlist_1,153);

ds_list_add(global.c_spawnlist_2,4,10,12,30,31,51,58,59,62,63,127,128,129,130);

//ds_list_add(global.c_spawnlist_3,22,25);

ds_list_add(global.c_spawnlist_4,21,23,24,28);

ds_list_add(global.c_spawnlist_5,5,6,7,8);

ds_list_add(global.c_spawnlist_6,36,37,38,39,40,41,42,43,45,60,81,83,84,88,89);
ds_list_add(global.c_spawnlist_6,90,91,93,94,95,96,111,112,113,114,155,156,157,158);

ds_list_add(global.c_spawnlist_7,53,54,55,56,71,106,107);

ds_list_add(global.c_spawnlist_8,11,138,139,144,145,146,147,148,149,150);
