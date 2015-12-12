/// scr_attack_handle(Instance_ID,Attack_ID)
var npc_id = argument0;
var npc_armor = 0;
var npc_kb_resist = 0;
var w_damage = argument1.damage;
var kb_speed = argument1.kb_speed;
var kb_time = argument1.kb_time;
var kb_cd = argument1.kb_cd;
var hit_type = 0;

// Determine NPC type and the resistances it has
switch(npc_id.object_index)
{
case obj_npc_wolf:{npc_armor=wolf_armor;npc_kb_resist=wolf_kb_resist;npc_id.npc_fear += 5;npc_id.npc_anger += 5;hit_type=0;break;}
case obj_npc_bear:{npc_armor=bear_armor;npc_kb_resist=bear_kb_resist;hit_type=0;npc_id.npc_fear += 6.5;npc_id.npc_anger += 7;hit_type=0;break;}
case obj_npc_buck:{npc_armor=buck_armor;npc_kb_resist=buck_kb_resist;hit_type=0;npc_id.npc_fear += 20;npc_id.npc_anger += 3;hit_type=0;break;}
case obj_ai_nomadripper:{npc_armor=nomadripper_armor;npc_kb_resist=nomadripper_kb_resist;hit_type=0;break;}
case obj_ai_nomadstalker:{npc_armor=nomadstalker_armor;npc_kb_resist=nomadstalker_kb_resist;hit_type=0;break;}
}

// Evaluate damage and knock back dealt to the NPC
var i, r;
i = 1-npc_armor;
r = 1-npc_kb_resist;
npc_id.npc_health -= w_damage*i;
npc_id.ai_knockback_cd = kb_cd*r;
npc_id.ai_knockback_time = kb_time*r;
npc_id.ai_knockback_speed = kb_speed*r;
npc_id.ai_knockback_dir = point_direction(obj_player.x,obj_player.y,x,y);

// Play audio based on hit_type and handle blood
switch(hit_type)
{
    case 0:
    {
    var sound = audio_play_sound_at(snd_flesh_hit,npc_id.x,npc_id.y,1,100,250,1,false,2);
    audio_sound_gain(sound,0.25,0);
    instance_create(npc_id.x,npc_id.y,obj_blood_hit1);
    var inst = instance_create(npc_id.x,npc_id.y,obj_popup_resourcegain);
    inst.text = "-"+string(w_damage*i)+" Health";
    inst.v_color = c_maroon;
    npc_id.v_speed = npc_id.v_speed/2;
    npc_id.ai_hit = round(kb_time*r);
    npc_id.was_hit = true;
    if ( global.render_blood == 1 )
    {
    if ( npc_id.npc_health < 50 ){
    ds_list_add(global.ai_xdecal,npc_id.x);
    ds_list_add(global.ai_ydecal,npc_id.y);
    if ( npc_id.npc_health > 25 )
    {ds_list_add(global.ai_sdecal,"spr_blood_0");}
    else
    {ds_list_add(global.ai_sdecal,"spr_blood_1");}}
    }
    break;
    }
}

// Update Stats
if(npc_id.npc_health<=0)
{
switch(npc_id.object_index)
{
case obj_npc_wolf:{global.wolves_killed++;steam_set_stat_int("wolf_kills", steam_get_stat_int("wolf_kills")+1);break;}
case obj_npc_bear:{global.bears_killed++;steam_set_stat_int("bear_kills", steam_get_stat_int("bear_kills")+1);break;}
case obj_npc_buck:{global.bucks_killed++;steam_set_stat_int("buck_kills", steam_get_stat_int("buck_kills")+1);break;}
case obj_ai_nomadripper:{global.rippers_killed++;steam_set_stat_int("ripper_kills", steam_get_stat_int("ripper_kills")+1);break;}
case obj_ai_nomadstalker:{global.stalkers_killed++;steam_set_stat_int("stalker_kills", steam_get_stat_int("stalker_kills")+1);break;}
}
}
