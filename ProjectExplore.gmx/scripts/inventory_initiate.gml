/// inventory_initiate(type)
/*
var view_xcenter = view_wview[0]/2;
var view_ycenter = view_hview[0]/2;
var inst = 0;
instance_create(view_xcenter-432,view_ycenter-184,obj_inv_itemsearch)
if ( global.tablet_mode == 0 ){
// Row 1
inst = instance_create(view_xcenter-144,view_ycenter-42,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;
inst = instance_create(view_xcenter-96,view_ycenter-42,obj_inv_slot);
inst.grid_x=1;inst.grid_y=0;
inst = instance_create(view_xcenter-48,view_ycenter-42,obj_inv_slot);
inst.grid_x=2;inst.grid_y=0;
inst = instance_create(view_xcenter,view_ycenter-42,obj_inv_slot);
inst.grid_x=3;inst.grid_y=0;
inst = instance_create(view_xcenter+48,view_ycenter-42,obj_inv_slot);
inst.grid_x=4;inst.grid_y=0;
inst = instance_create(view_xcenter+96,view_ycenter-42,obj_inv_slot);
inst.grid_x=5;inst.grid_y=0;
inst = instance_create(view_xcenter+144,view_ycenter-42,obj_inv_slot);
inst.grid_x=6;inst.grid_y=0;

// Row 2
inst = instance_create(view_xcenter-144,view_ycenter+6,obj_inv_slot);
inst.grid_x=0;inst.grid_y=1;
inst = instance_create(view_xcenter-96,view_ycenter+6,obj_inv_slot);
inst.grid_x=1;inst.grid_y=1;
inst = instance_create(view_xcenter-48,view_ycenter+6,obj_inv_slot);
inst.grid_x=2;inst.grid_y=1;
inst = instance_create(view_xcenter,view_ycenter+6,obj_inv_slot);
inst.grid_x=3;inst.grid_y=1;
inst = instance_create(view_xcenter+48,view_ycenter+6,obj_inv_slot);
inst.grid_x=4;inst.grid_y=1;
inst = instance_create(view_xcenter+96,view_ycenter+6,obj_inv_slot);
inst.grid_x=5;inst.grid_y=1;
inst = instance_create(view_xcenter+144,view_ycenter+6,obj_inv_slot);
inst.grid_x=6;inst.grid_y=1;

// Row 3
inst = instance_create(view_xcenter-144,view_ycenter+54,obj_inv_slot);
inst.grid_x=0;inst.grid_y=2;
inst = instance_create(view_xcenter-96,view_ycenter+54,obj_inv_slot);
inst.grid_x=1;inst.grid_y=2;
inst = instance_create(view_xcenter-48,view_ycenter+54,obj_inv_slot);
inst.grid_x=2;inst.grid_y=2;
inst = instance_create(view_xcenter,view_ycenter+54,obj_inv_slot);
inst.grid_x=3;inst.grid_y=2;
inst = instance_create(view_xcenter+48,view_ycenter+54,obj_inv_slot);
inst.grid_x=4;inst.grid_y=2;
inst = instance_create(view_xcenter+96,view_ycenter+54,obj_inv_slot);
inst.grid_x=5;inst.grid_y=2;
inst = instance_create(view_xcenter+144,view_ycenter+54,obj_inv_slot);
inst.grid_x=6;inst.grid_y=2;

if ( global.v_backpack == 1 )
{
// Row 4
inst = instance_create(view_xcenter-144,view_ycenter+102,obj_inv_slot);
inst.grid_x=0;inst.grid_y=3;
inst = instance_create(view_xcenter-96,view_ycenter+102,obj_inv_slot);
inst.grid_x=1;inst.grid_y=3;
inst = instance_create(view_xcenter-48,view_ycenter+102,obj_inv_slot);
inst.grid_x=2;inst.grid_y=3;
inst = instance_create(view_xcenter,view_ycenter+102,obj_inv_slot);
inst.grid_x=3;inst.grid_y=3;
inst = instance_create(view_xcenter+48,view_ycenter+102,obj_inv_slot);
inst.grid_x=4;inst.grid_y=3;
inst = instance_create(view_xcenter+96,view_ycenter+102,obj_inv_slot);
inst.grid_x=5;inst.grid_y=3;
inst = instance_create(view_xcenter+144,view_ycenter+102,obj_inv_slot);
inst.grid_x=6;inst.grid_y=3;
}

// Hotbar
inst = instance_create(view_xcenter-72,view_ycenter+186,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;inst.inv_part=1;
inst = instance_create(view_xcenter-24,view_ycenter+186,obj_inv_slot);
inst.grid_x=1;inst.grid_y=0;inst.inv_part=1;
inst = instance_create(view_xcenter+24,view_ycenter+186,obj_inv_slot);
inst.grid_x=2;inst.grid_y=0;inst.inv_part=1;
inst = instance_create(view_xcenter+72,view_ycenter+186,obj_inv_slot);
inst.grid_x=3;inst.grid_y=0;inst.inv_part=1;

// Clothing
inst = instance_create(view_xcenter-144,view_ycenter-92,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;inst.inv_part=2;
inst = instance_create(view_xcenter-144,view_ycenter-140,obj_inv_slot);
inst.grid_x=0;inst.grid_y=1;inst.inv_part=2;
inst = instance_create(view_xcenter-144,view_ycenter-188,obj_inv_slot);
inst.grid_x=0;inst.grid_y=2;inst.inv_part=2;

if ( argument0 == 0 )
{
instance_create(view_xcenter-432,view_ycenter-184,obj_inv_itemsearch)
/*
// Crafting Buttons
// 1st Row
instance_create(view_xcenter-544,view_ycenter-184,obj_tab_construction);
instance_create(view_xcenter-480,view_ycenter-184,obj_tab_armor);
instance_create(view_xcenter-416,view_ycenter-184,obj_tab_lights);
instance_create(view_xcenter-352,view_ycenter-184,obj_tab_terrain);
instance_create(view_xcenter-288,view_ycenter-184,obj_tab_weapons);
// 2nd Row
instance_create(view_xcenter-544,view_ycenter-152,obj_tab_storage);
instance_create(view_xcenter-480,view_ycenter-152,obj_tab_medical);
instance_create(view_xcenter-416,view_ycenter-152,obj_tab_crafting);
instance_create(view_xcenter-352,view_ycenter-152,obj_tab_tools);
instance_create(view_xcenter-288,view_ycenter-152,obj_tab_ammo);

}

if ( argument0 == 1 )
{
// Large Crate Storage Initiation
instance_create(view_xcenter-376,view_ycenter+124,obj_inv_takeall);

// Row 1
inst = instance_create(view_xcenter-448,view_ycenter-54,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-412,view_ycenter-54,obj_inv_slot);
inst.grid_x=1;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-376,view_ycenter-54,obj_inv_slot);
inst.grid_x=2;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-340,view_ycenter-54,obj_inv_slot);
inst.grid_x=3;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-304,view_ycenter-54,obj_inv_slot);
inst.grid_x=4;inst.grid_y=0;inst.inv_part=3;
// Row 2
inst = instance_create(view_xcenter-448,view_ycenter-20,obj_inv_slot);
inst.grid_x=0;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-412,view_ycenter-20,obj_inv_slot);
inst.grid_x=1;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-376,view_ycenter-20,obj_inv_slot);
inst.grid_x=2;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-340,view_ycenter-20,obj_inv_slot);
inst.grid_x=3;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-304,view_ycenter-20,obj_inv_slot);
inst.grid_x=4;inst.grid_y=1;inst.inv_part=3;
// Row 3
inst = instance_create(view_xcenter-448,view_ycenter+16,obj_inv_slot);
inst.grid_x=0;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-412,view_ycenter+16,obj_inv_slot);
inst.grid_x=1;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-376,view_ycenter+16,obj_inv_slot);
inst.grid_x=2;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-340,view_ycenter+16,obj_inv_slot);
inst.grid_x=3;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-304,view_ycenter+16,obj_inv_slot);
inst.grid_x=4;inst.grid_y=2;inst.inv_part=3;
// Row 4
inst = instance_create(view_xcenter-448,view_ycenter+52,obj_inv_slot);
inst.grid_x=0;inst.grid_y=3;inst.inv_part=3;
inst = instance_create(view_xcenter-412,view_ycenter+52,obj_inv_slot);
inst.grid_x=1;inst.grid_y=3;inst.inv_part=3;
inst = instance_create(view_xcenter-376,view_ycenter+52,obj_inv_slot);
inst.grid_x=2;inst.grid_y=3;inst.inv_part=3;
inst = instance_create(view_xcenter-340,view_ycenter+52,obj_inv_slot);
inst.grid_x=3;inst.grid_y=3;inst.inv_part=3;
inst = instance_create(view_xcenter-304,view_ycenter+52,obj_inv_slot);
inst.grid_x=4;inst.grid_y=3;inst.inv_part=3;
// Row 5
inst = instance_create(view_xcenter-448,view_ycenter+88,obj_inv_slot);
inst.grid_x=0;inst.grid_y=4;inst.inv_part=3;
inst = instance_create(view_xcenter-412,view_ycenter+88,obj_inv_slot);
inst.grid_x=1;inst.grid_y=4;inst.inv_part=3;
inst = instance_create(view_xcenter-376,view_ycenter+88,obj_inv_slot);
inst.grid_x=2;inst.grid_y=4;inst.inv_part=3;
inst = instance_create(view_xcenter-340,view_ycenter+88,obj_inv_slot);
inst.grid_x=3;inst.grid_y=4;inst.inv_part=3;
inst = instance_create(view_xcenter-304,view_ycenter+88,obj_inv_slot);
inst.grid_x=4;inst.grid_y=4;inst.inv_part=3;
}

if ( argument0 == 2 )
{
// Small Crate Storage Initiation
instance_create(view_xcenter-376,view_ycenter+52,obj_inv_takeall);

// Row 1
inst = instance_create(view_xcenter-412,view_ycenter-54,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-376,view_ycenter-54,obj_inv_slot);
inst.grid_x=1;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-340,view_ycenter-54,obj_inv_slot);
inst.grid_x=2;inst.grid_y=0;inst.inv_part=3;
// Row 2
inst = instance_create(view_xcenter-412,view_ycenter-20,obj_inv_slot);
inst.grid_x=0;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-376,view_ycenter-20,obj_inv_slot);
inst.grid_x=1;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-340,view_ycenter-20,obj_inv_slot);
inst.grid_x=2;inst.grid_y=1;inst.inv_part=3;
// Row 3
inst = instance_create(view_xcenter-412,view_ycenter+16,obj_inv_slot);
inst.grid_x=0;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-376,view_ycenter+16,obj_inv_slot);
inst.grid_x=1;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-340,view_ycenter+16,obj_inv_slot);
inst.grid_x=2;inst.grid_y=2;inst.inv_part=3;
}

if ( argument0 == 3 )
{
// Skeleton Storage Initiation
instance_create(view_xcenter-376,view_ycenter+16,obj_inv_takeall);

// Row 1
inst = instance_create(view_xcenter-394,view_ycenter-54,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-358,view_ycenter-54,obj_inv_slot);
inst.grid_x=1;inst.grid_y=0;inst.inv_part=3;
// Row 2
inst = instance_create(view_xcenter-394,view_ycenter-20,obj_inv_slot);
inst.grid_x=0;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-358,view_ycenter-20,obj_inv_slot);
inst.grid_x=1;inst.grid_y=1;inst.inv_part=3;
}

if ( argument0 == 4 )
{
// Small Table Storage Initiation
inst = instance_create(view_xcenter-376,view_ycenter-37,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;inst.inv_part=3;
}

if ( argument0 == 5 )
{
// Wood Chest Storage Initiation
instance_create(view_xcenter-374,view_ycenter+88,obj_inv_takeall);

// Row 1
inst = instance_create(view_xcenter-448-16,view_ycenter-54,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-412-16,view_ycenter-54,obj_inv_slot);
inst.grid_x=1;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-376-16,view_ycenter-54,obj_inv_slot);
inst.grid_x=2;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-340-16,view_ycenter-54,obj_inv_slot);
inst.grid_x=3;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-304-16,view_ycenter-54,obj_inv_slot);
inst.grid_x=4;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-268-16,view_ycenter-54,obj_inv_slot);
inst.grid_x=5;inst.grid_y=0;inst.inv_part=3;
// Row 2
inst = instance_create(view_xcenter-448-16,view_ycenter-20,obj_inv_slot);
inst.grid_x=0;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-412-16,view_ycenter-20,obj_inv_slot);
inst.grid_x=1;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-376-16,view_ycenter-20,obj_inv_slot);
inst.grid_x=2;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-340-16,view_ycenter-20,obj_inv_slot);
inst.grid_x=3;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-304-16,view_ycenter-20,obj_inv_slot);
inst.grid_x=4;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-268-16,view_ycenter-20,obj_inv_slot);
inst.grid_x=5;inst.grid_y=1;inst.inv_part=3;
// Row 3
inst = instance_create(view_xcenter-448-16,view_ycenter+16,obj_inv_slot);
inst.grid_x=0;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-412-16,view_ycenter+16,obj_inv_slot);
inst.grid_x=1;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-376-16,view_ycenter+16,obj_inv_slot);
inst.grid_x=2;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-340-16,view_ycenter+16,obj_inv_slot);
inst.grid_x=3;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-304-16,view_ycenter+16,obj_inv_slot);
inst.grid_x=4;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-268-16,view_ycenter+16,obj_inv_slot);
inst.grid_x=5;inst.grid_y=2;inst.inv_part=3;
// Row 4
inst = instance_create(view_xcenter-448-16,view_ycenter+52,obj_inv_slot);
inst.grid_x=0;inst.grid_y=3;inst.inv_part=3;
inst = instance_create(view_xcenter-412-16,view_ycenter+52,obj_inv_slot);
inst.grid_x=1;inst.grid_y=3;inst.inv_part=3;
inst = instance_create(view_xcenter-376-16,view_ycenter+52,obj_inv_slot);
inst.grid_x=2;inst.grid_y=3;inst.inv_part=3;
inst = instance_create(view_xcenter-340-16,view_ycenter+52,obj_inv_slot);
inst.grid_x=3;inst.grid_y=3;inst.inv_part=3;
inst = instance_create(view_xcenter-304-16,view_ycenter+52,obj_inv_slot);
inst.grid_x=4;inst.grid_y=3;inst.inv_part=3;
inst = instance_create(view_xcenter-268-16,view_ycenter+52,obj_inv_slot);
inst.grid_x=5;inst.grid_y=3;inst.inv_part=3;
}

if ( argument0 == 6 )
{
// Forging Table Initiation

var offset_y = -256;
// Inventory Slots

// Resource
inst = instance_create(view_xcenter-448-16,view_ycenter-66,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;inst.inv_part=3;
var inst_slot1 = inst;
// Fuel (Wood Probably)
inst = instance_create(view_xcenter-448-16,view_ycenter-2,obj_inv_slot);
inst.grid_x=0;inst.grid_y=1;inst.inv_part=3;
var inst_slot2 = inst;
// Output Slot
inst = instance_create(view_xcenter-192-16,view_ycenter-34,obj_inv_slot);
inst.grid_x=1;inst.grid_y=0;inst.inv_part=3;
// Craft Item Button
inst = instance_create(view_xcenter-336,view_ycenter-34,obj_inv_forgeitem);
inst.slot1 = inst_slot1;
inst.slot2 = inst_slot2;
// All Crafting Options
instance_create(view_xcenter-360,view_ycenter-160,obj_craft_lightmetalsword);
instance_create(view_xcenter-360,view_ycenter-128,obj_craft_heavymetalsword);
instance_create(view_xcenter-360,view_ycenter+96,obj_craft_screw);
instance_create(view_xcenter-360,view_ycenter+128,obj_craft_spring);
}

if ( argument0 == 7 )
{
// Deconstruction Table Initiation

var offset_y = -256;
var offset_x = 64;
// Inventory Slots

// Input Slot
inst = instance_create(view_xcenter-502+offset_x,view_ycenter-16,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;inst.inv_part=3;
var inst_slot1 = inst;
// Deconstruct Item Button
inst = instance_create(view_xcenter-422+offset_x,view_ycenter-16,obj_inv_deconstructitem);
// Output Slot 1
inst = instance_create(view_xcenter-342+offset_x,view_ycenter-16,obj_inv_slot);
inst.grid_x=1;inst.grid_y=0;inst.inv_part=3;
var inst_slot2 = inst;
// Output Slot 2
inst = instance_create(view_xcenter-306+offset_x,view_ycenter-16,obj_inv_slot);
inst.grid_x=2;inst.grid_y=0;inst.inv_part=3;
var inst_slot3 = inst;
// Output Slot 3
inst = instance_create(view_xcenter-270+offset_x,view_ycenter-16,obj_inv_slot);
inst.grid_x=3;inst.grid_y=0;inst.inv_part=3;
var inst_slot4 = inst;
}

if ( argument0 == 8 )
{
// Forging Table Initiation

var offset_y = -256;
// Inventory Slots

// Resource
inst = instance_create(view_xcenter-448-16,view_ycenter-66,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;inst.inv_part=3;
var inst_slot1 = inst;
// Fuel (Wood Probably)
inst = instance_create(view_xcenter-448-16,view_ycenter-2,obj_inv_slot);
inst.grid_x=0;inst.grid_y=1;inst.inv_part=3;
var inst_slot2 = inst;
// Output Slot
inst = instance_create(view_xcenter-192-16,view_ycenter-34,obj_inv_slot);
inst.grid_x=1;inst.grid_y=0;inst.inv_part=3;
// Craft Item Button
inst = instance_create(view_xcenter-336,view_ycenter-34,obj_inv_fire);
inst.slot1 = inst_slot1;
inst.slot2 = inst_slot2;
}}
else
{
var offset_horz = 70;
// Row 1
inst = instance_create(view_xcenter-143+offset_horz,view_ycenter-54,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;
inst = instance_create(view_xcenter-73+offset_horz,view_ycenter-54,obj_inv_slot);
inst.grid_x=1;inst.grid_y=0;
inst = instance_create(view_xcenter-3+offset_horz,view_ycenter-54,obj_inv_slot);
inst.grid_x=2;inst.grid_y=0;
inst = instance_create(view_xcenter+67+offset_horz,view_ycenter-54,obj_inv_slot);
inst.grid_x=3;inst.grid_y=0;
inst = instance_create(view_xcenter+137+offset_horz,view_ycenter-54,obj_inv_slot);
inst.grid_x=4;inst.grid_y=0;
inst = instance_create(view_xcenter+207+offset_horz,view_ycenter-54,obj_inv_slot);
inst.grid_x=5;inst.grid_y=0;
inst = instance_create(view_xcenter+277+offset_horz,view_ycenter-54,obj_inv_slot);
inst.grid_x=6;inst.grid_y=0;

// Row 2
inst = instance_create(view_xcenter-143+offset_horz,view_ycenter+16,obj_inv_slot);
inst.grid_x=0;inst.grid_y=1;
inst = instance_create(view_xcenter-73+offset_horz,view_ycenter+16,obj_inv_slot);
inst.grid_x=1;inst.grid_y=1;
inst = instance_create(view_xcenter-3+offset_horz,view_ycenter+16,obj_inv_slot);
inst.grid_x=2;inst.grid_y=1;
inst = instance_create(view_xcenter+67+offset_horz,view_ycenter+16,obj_inv_slot);
inst.grid_x=3;inst.grid_y=1;
inst = instance_create(view_xcenter+137+offset_horz,view_ycenter+16,obj_inv_slot);
inst.grid_x=4;inst.grid_y=1;
inst = instance_create(view_xcenter+207+offset_horz,view_ycenter+16,obj_inv_slot);
inst.grid_x=5;inst.grid_y=1;
inst = instance_create(view_xcenter+277+offset_horz,view_ycenter+16,obj_inv_slot);
inst.grid_x=6;inst.grid_y=1;

// Row 3
inst = instance_create(view_xcenter-143+offset_horz,view_ycenter+86,obj_inv_slot);
inst.grid_x=0;inst.grid_y=2;
inst = instance_create(view_xcenter-73+offset_horz,view_ycenter+86,obj_inv_slot);
inst.grid_x=1;inst.grid_y=2;
inst = instance_create(view_xcenter-3+offset_horz,view_ycenter+86,obj_inv_slot);
inst.grid_x=2;inst.grid_y=2;
inst = instance_create(view_xcenter+67+offset_horz,view_ycenter+86,obj_inv_slot);
inst.grid_x=3;inst.grid_y=2;
inst = instance_create(view_xcenter+137+offset_horz,view_ycenter+86,obj_inv_slot);
inst.grid_x=4;inst.grid_y=2;
inst = instance_create(view_xcenter+207+offset_horz,view_ycenter+86,obj_inv_slot);
inst.grid_x=5;inst.grid_y=2;
inst = instance_create(view_xcenter+277+offset_horz,view_ycenter+86,obj_inv_slot);
inst.grid_x=6;inst.grid_y=2;

if ( global.v_backpack == 1 )
{
// Row 4
inst = instance_create(view_xcenter-143+offset_horz,view_ycenter+156,obj_inv_slot);
inst.grid_x=0;inst.grid_y=3;
inst = instance_create(view_xcenter-73+offset_horz,view_ycenter+156,obj_inv_slot);
inst.grid_x=1;inst.grid_y=3;
inst = instance_create(view_xcenter-3+offset_horz,view_ycenter+156,obj_inv_slot);
inst.grid_x=2;inst.grid_y=3;
inst = instance_create(view_xcenter+67+offset_horz,view_ycenter+156,obj_inv_slot);
inst.grid_x=3;inst.grid_y=3;
inst = instance_create(view_xcenter+137+offset_horz,view_ycenter+156,obj_inv_slot);
inst.grid_x=4;inst.grid_y=3;
inst = instance_create(view_xcenter+207+offset_horz,view_ycenter+156,obj_inv_slot);
inst.grid_x=5;inst.grid_y=3;
inst = instance_create(view_xcenter+277+offset_horz,view_ycenter+156,obj_inv_slot);
inst.grid_x=6;inst.grid_y=3;
}

// Hotbar
inst = instance_create(view_xcenter-37+offset_horz,view_ycenter+275,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;inst.inv_part=1;
inst = instance_create(view_xcenter+33+offset_horz,view_ycenter+275,obj_inv_slot);
inst.grid_x=1;inst.grid_y=0;inst.inv_part=1;
inst = instance_create(view_xcenter+103+offset_horz,view_ycenter+275,obj_inv_slot);
inst.grid_x=2;inst.grid_y=0;inst.inv_part=1;
inst = instance_create(view_xcenter+173+offset_horz,view_ycenter+275,obj_inv_slot);
inst.grid_x=3;inst.grid_y=0;inst.inv_part=1;

// Clothing
inst = instance_create(view_xcenter-143+offset_horz,view_ycenter-152,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;inst.inv_part=2;
inst = instance_create(view_xcenter-143+offset_horz,view_ycenter-222,obj_inv_slot);
inst.grid_x=0;inst.grid_y=1;inst.inv_part=2;
inst = instance_create(view_xcenter-143+offset_horz,view_ycenter-292,obj_inv_slot);
inst.grid_x=0;inst.grid_y=2;inst.inv_part=2;

if ( argument0 == 0 )
{
// Crafting Buttons
// 1st Row
instance_create(view_xcenter-544,view_ycenter-184,obj_tab_construction);
instance_create(view_xcenter-480,view_ycenter-184,obj_tab_armor);
instance_create(view_xcenter-416,view_ycenter-184,obj_tab_lights);
instance_create(view_xcenter-352,view_ycenter-184,obj_tab_terrain);
instance_create(view_xcenter-288,view_ycenter-184,obj_tab_weapons);
// 2nd Row
instance_create(view_xcenter-544,view_ycenter-152,obj_tab_storage);
instance_create(view_xcenter-480,view_ycenter-152,obj_tab_medical);
instance_create(view_xcenter-416,view_ycenter-152,obj_tab_crafting);
instance_create(view_xcenter-352,view_ycenter-152,obj_tab_tools);
instance_create(view_xcenter-288,view_ycenter-152,obj_tab_ammo);
}

if ( argument0 == 1 )
{
// Large Crate Storage Initiation
instance_create(view_xcenter-376,view_ycenter+304,obj_inv_takeall);

// Row 1
inst = instance_create(view_xcenter-516,view_ycenter-54,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-446,view_ycenter-54,obj_inv_slot);
inst.grid_x=1;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-376,view_ycenter-54,obj_inv_slot);
inst.grid_x=2;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-306,view_ycenter-54,obj_inv_slot);
inst.grid_x=3;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-236,view_ycenter-54,obj_inv_slot);
inst.grid_x=4;inst.grid_y=0;inst.inv_part=3;
// Row 2
inst = instance_create(view_xcenter-516,view_ycenter+16,obj_inv_slot);
inst.grid_x=0;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-446,view_ycenter+16,obj_inv_slot);
inst.grid_x=1;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-376,view_ycenter+16,obj_inv_slot);
inst.grid_x=2;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-306,view_ycenter+16,obj_inv_slot);
inst.grid_x=3;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-236,view_ycenter+16,obj_inv_slot);
inst.grid_x=4;inst.grid_y=1;inst.inv_part=3;
// Row 3
inst = instance_create(view_xcenter-516,view_ycenter+86,obj_inv_slot);
inst.grid_x=0;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-446,view_ycenter+86,obj_inv_slot);
inst.grid_x=1;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-376,view_ycenter+86,obj_inv_slot);
inst.grid_x=2;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-306,view_ycenter+86,obj_inv_slot);
inst.grid_x=3;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-236,view_ycenter+86,obj_inv_slot);
inst.grid_x=4;inst.grid_y=2;inst.inv_part=3;
// Row 4
inst = instance_create(view_xcenter-516,view_ycenter+156,obj_inv_slot);
inst.grid_x=0;inst.grid_y=3;inst.inv_part=3;
inst = instance_create(view_xcenter-446,view_ycenter+156,obj_inv_slot);
inst.grid_x=1;inst.grid_y=3;inst.inv_part=3;
inst = instance_create(view_xcenter-376,view_ycenter+156,obj_inv_slot);
inst.grid_x=2;inst.grid_y=3;inst.inv_part=3;
inst = instance_create(view_xcenter-306,view_ycenter+156,obj_inv_slot);
inst.grid_x=3;inst.grid_y=3;inst.inv_part=3;
inst = instance_create(view_xcenter-236,view_ycenter+156,obj_inv_slot);
inst.grid_x=4;inst.grid_y=3;inst.inv_part=3;
// Row 5
inst = instance_create(view_xcenter-516,view_ycenter+226,obj_inv_slot);
inst.grid_x=0;inst.grid_y=4;inst.inv_part=3;
inst = instance_create(view_xcenter-446,view_ycenter+226,obj_inv_slot);
inst.grid_x=1;inst.grid_y=4;inst.inv_part=3;
inst = instance_create(view_xcenter-376,view_ycenter+226,obj_inv_slot);
inst.grid_x=2;inst.grid_y=4;inst.inv_part=3;
inst = instance_create(view_xcenter-306,view_ycenter+226,obj_inv_slot);
inst.grid_x=3;inst.grid_y=4;inst.inv_part=3;
inst = instance_create(view_xcenter-236,view_ycenter+226,obj_inv_slot);
inst.grid_x=4;inst.grid_y=4;inst.inv_part=3;
}

if ( argument0 == 2 )
{
// Small Crate Storage Initiation
instance_create(view_xcenter-376,view_ycenter+198,obj_inv_takeall);

// Row 1
inst = instance_create(view_xcenter-446,view_ycenter-54,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-376,view_ycenter-54,obj_inv_slot);
inst.grid_x=1;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-306,view_ycenter-54,obj_inv_slot);
inst.grid_x=2;inst.grid_y=0;inst.inv_part=3;
// Row 2
inst = instance_create(view_xcenter-446,view_ycenter+16,obj_inv_slot);
inst.grid_x=0;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-376,view_ycenter+16,obj_inv_slot);
inst.grid_x=1;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-306,view_ycenter+16,obj_inv_slot);
inst.grid_x=2;inst.grid_y=1;inst.inv_part=3;
// Row 3
inst = instance_create(view_xcenter-446,view_ycenter+86,obj_inv_slot);
inst.grid_x=0;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-376,view_ycenter+86,obj_inv_slot);
inst.grid_x=1;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-306,view_ycenter+86,obj_inv_slot);
inst.grid_x=2;inst.grid_y=2;inst.inv_part=3;
}

if ( argument0 == 3 )
{
// Skeleton Storage Initiation
instance_create(view_xcenter-354,view_ycenter+128,obj_inv_takeall);

// Row 1
inst = instance_create(view_xcenter-394,view_ycenter-54,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-324,view_ycenter-54,obj_inv_slot);
inst.grid_x=1;inst.grid_y=0;inst.inv_part=3;
// Row 2
inst = instance_create(view_xcenter-394,view_ycenter+16,obj_inv_slot);
inst.grid_x=0;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-324,view_ycenter+16,obj_inv_slot);
inst.grid_x=1;inst.grid_y=1;inst.inv_part=3;
}

if ( argument0 == 4 )
{
// Small Table Storage Initiation
inst = instance_create(view_xcenter-376,view_ycenter-37,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;inst.inv_part=3;
}

if ( argument0 == 5 )
{
// Wood Chest Storage Initiation
instance_create(view_xcenter-430,view_ycenter+268,obj_inv_takeall);

// Row 1
inst = instance_create(view_xcenter-605,view_ycenter-54,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-535,view_ycenter-54,obj_inv_slot);
inst.grid_x=1;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-465,view_ycenter-54,obj_inv_slot);
inst.grid_x=2;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-395,view_ycenter-54,obj_inv_slot);
inst.grid_x=3;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-325,view_ycenter-54,obj_inv_slot);
inst.grid_x=4;inst.grid_y=0;inst.inv_part=3;
inst = instance_create(view_xcenter-255,view_ycenter-54,obj_inv_slot);
inst.grid_x=5;inst.grid_y=0;inst.inv_part=3;
// Row 2
inst = instance_create(view_xcenter-605,view_ycenter+16,obj_inv_slot);
inst.grid_x=0;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-535,view_ycenter+16,obj_inv_slot);
inst.grid_x=1;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-465,view_ycenter+16,obj_inv_slot);
inst.grid_x=2;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-395,view_ycenter+16,obj_inv_slot);
inst.grid_x=3;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-325,view_ycenter+16,obj_inv_slot);
inst.grid_x=4;inst.grid_y=1;inst.inv_part=3;
inst = instance_create(view_xcenter-255,view_ycenter+16,obj_inv_slot);
inst.grid_x=5;inst.grid_y=1;inst.inv_part=3;
// Row 3
inst = instance_create(view_xcenter-605,view_ycenter+86,obj_inv_slot);
inst.grid_x=0;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-535,view_ycenter+86,obj_inv_slot);
inst.grid_x=1;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-465,view_ycenter+86,obj_inv_slot);
inst.grid_x=2;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-395,view_ycenter+86,obj_inv_slot);
inst.grid_x=3;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-325,view_ycenter+86,obj_inv_slot);
inst.grid_x=4;inst.grid_y=2;inst.inv_part=3;
inst = instance_create(view_xcenter-255,view_ycenter+86,obj_inv_slot);
inst.grid_x=5;inst.grid_y=2;inst.inv_part=3;
// Row 4
inst = instance_create(view_xcenter-605,view_ycenter+156,obj_inv_slot);
inst.grid_x=0;inst.grid_y=3;inst.inv_part=3;
inst = instance_create(view_xcenter-535,view_ycenter+156,obj_inv_slot);
inst.grid_x=1;inst.grid_y=3;inst.inv_part=3;
inst = instance_create(view_xcenter-465,view_ycenter+156,obj_inv_slot);
inst.grid_x=2;inst.grid_y=3;inst.inv_part=3;
inst = instance_create(view_xcenter-395,view_ycenter+156,obj_inv_slot);
inst.grid_x=3;inst.grid_y=3;inst.inv_part=3;
inst = instance_create(view_xcenter-325,view_ycenter+156,obj_inv_slot);
inst.grid_x=4;inst.grid_y=3;inst.inv_part=3;
inst = instance_create(view_xcenter-255,view_ycenter+156,obj_inv_slot);
inst.grid_x=5;inst.grid_y=3;inst.inv_part=3;
}

if ( argument0 == 6 )
{
// Forging Table Initiation

var offset_y = -256;
// Inventory Slots

// Resource
inst = instance_create(view_xcenter-578,view_ycenter-68,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;inst.inv_part=3;
var inst_slot1 = inst;
// Fuel (Wood Probably)
inst = instance_create(view_xcenter-578,view_ycenter,obj_inv_slot);
inst.grid_x=0;inst.grid_y=1;inst.inv_part=3;
var inst_slot2 = inst;
// Output Slot
inst = instance_create(view_xcenter-192,view_ycenter-34,obj_inv_slot);
inst.grid_x=1;inst.grid_y=0;inst.inv_part=3;
// Craft Item Button
inst = instance_create(view_xcenter-360,view_ycenter-34,obj_inv_forgeitem);
inst.slot1 = inst_slot1;
inst.slot2 = inst_slot2;
// All Crafting Options
instance_create(view_xcenter-360,view_ycenter-160,obj_craft_lightmetalsword);
instance_create(view_xcenter-360,view_ycenter-128,obj_craft_heavymetalsword);
instance_create(view_xcenter-360,view_ycenter+96,obj_craft_screw);
instance_create(view_xcenter-360,view_ycenter+128,obj_craft_spring);
}

if ( argument0 == 7 )
{
// Deconstruction Table Initiation

var offset_y = -256;
var offset_x = 64;
// Inventory Slots

// Input Slot
inst = instance_create(view_xcenter-604+offset_x,view_ycenter,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;inst.inv_part=3;
var inst_slot1 = inst;
// Deconstruct Item Button
inst = instance_create(view_xcenter-507+offset_x,view_ycenter,obj_inv_deconstructitem);
// Output Slot 1
inst = instance_create(view_xcenter-410+offset_x,view_ycenter,obj_inv_slot);
inst.grid_x=1;inst.grid_y=0;inst.inv_part=3;
var inst_slot2 = inst;
// Output Slot 2
inst = instance_create(view_xcenter-340+offset_x,view_ycenter,obj_inv_slot);
inst.grid_x=2;inst.grid_y=0;inst.inv_part=3;
var inst_slot3 = inst;
// Output Slot 3
inst = instance_create(view_xcenter-270+offset_x,view_ycenter,obj_inv_slot);
inst.grid_x=3;inst.grid_y=0;inst.inv_part=3;
var inst_slot4 = inst;
}

if ( argument0 == 8 )
{
// Camp Fire Initiation

var offset_y = -256;
// Inventory Slots

// Resource
inst = instance_create(view_xcenter-482,view_ycenter-83,obj_inv_slot);
inst.grid_x=0;inst.grid_y=0;inst.inv_part=3;
var inst_slot1 = inst;
// Fuel (Wood Probably)
inst = instance_create(view_xcenter-482,view_ycenter+15,obj_inv_slot);
inst.grid_x=0;inst.grid_y=1;inst.inv_part=3;
var inst_slot2 = inst;
// Output Slot
inst = instance_create(view_xcenter-192,view_ycenter-34,obj_inv_slot);
inst.grid_x=1;inst.grid_y=0;inst.inv_part=3;
// Craft Item Button
inst = instance_create(view_xcenter-336,view_ycenter-34,obj_inv_fire);
inst.slot1 = inst_slot1;
inst.slot2 = inst_slot2;
}}
