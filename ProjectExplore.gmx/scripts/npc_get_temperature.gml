/// get_temperature_effect(temperature)
var temp = argument0;

npc_food += 0.0005;npc_thirst += 0.0005;
if ( temp > 250 && temp <= 300 ){npc_food -= 0.00255;npc_thirst -= 0.00325;npc_health -= 0.005;exit;}
if ( temp > 170 && temp <= 250 ){npc_food -= 0.00245;npc_thirst -= 0.003;npc_health -= 0.0043;exit;}
if ( temp > 150 && temp <= 170 ){npc_food -= 0.00235;npc_thirst -= 0.0027;exit;}
if ( temp > 130 && temp <= 150 ){npc_food -= 0.0023;npc_thirst -= 0.0026;exit;}
if ( temp > 110 && temp <= 130 ){npc_food -= 0.0022;npc_thirst -= 0.00242;exit;}
if ( temp > 105 && temp <= 110 ){npc_food -= 0.00215;npc_thirst -= 0.00235;exit;}
if ( temp > 100 && temp <= 105 ){npc_food -= 0.0021;npc_thirst -= 0.0022;exit;}
if ( temp > 95 && temp <= 100 ){npc_food -= 0.002;npc_thirst -= 0.00217;exit;}
if ( temp > 90 && temp <= 95 ){npc_food -= 0.00185;npc_thirst -= 0.0021;exit;}
if ( temp > 85 && temp <= 90 ){npc_food -= 0.0017;npc_thirst -= 0.00185;exit;}
if ( temp > 80 && temp <= 85 ){npc_food -= 0.0015;npc_thirst -= 0.00158;exit;}
if ( temp > 75 && temp <= 80 ){npc_food -= 0.00135;npc_thirst -= 0.00138;exit;}
if ( temp > 70 && temp <= 75 ){npc_food -= 0.0012;npc_thirst -= 0.00122;exit;}
if ( temp > 65 && temp <= 70 ){npc_food -= 0.0011;npc_thirst -= 0.0012;exit;}
if ( temp > 60 && temp <= 65 ){npc_food -= 0.00125;npc_thirst -= 0.0011;exit;}
if ( temp > 55 && temp <= 60 ){npc_food -= 0.00175;npc_thirst -= 0.001;exit;}
if ( temp > 50 && temp <= 55 ){npc_food -= 0.00225;npc_thirst -= 0.001;exit;}
if ( temp > 45 && temp <= 50 ){npc_food -= 0.00275;npc_thirst -= 0.001;exit;}
if ( temp > 40 && temp <= 45 ){npc_food -= 0.00315;npc_thirst -= 0.001;exit;}
if ( temp > 35 && temp <= 40 ){npc_food -= 0.0034;npc_thirst -= 0.001;exit;}
if ( temp <= 35 ){npc_food -= 0.0035;npc_thirst -= 0.001;exit;}
