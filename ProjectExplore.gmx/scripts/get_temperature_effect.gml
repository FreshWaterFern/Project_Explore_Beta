/// get_temperature_effect(temperature)
gml_pragma("forceinline");
var temp = argument0;

c_food += 0.0005;c_thirst += 0.0005;
if ( temp > 250 && temp <= 300 ){c_food -= 0.00255;c_thirst -= 0.00325;c_health -= 0.005;exit;}
if ( temp > 170 && temp <= 250 ){c_food -= 0.00245;c_thirst -= 0.003;c_health -= 0.0043;exit;}
if ( temp > 150 && temp <= 170 ){c_food -= 0.00235;c_thirst -= 0.0027;exit;}
if ( temp > 130 && temp <= 150 ){c_food -= 0.0023;c_thirst -= 0.0026;exit;}
if ( temp > 110 && temp <= 130 ){c_food -= 0.0022;c_thirst -= 0.00242;exit;}
if ( temp > 105 && temp <= 110 ){c_food -= 0.00215;c_thirst -= 0.00235;exit;}
if ( temp > 100 && temp <= 105 ){c_food -= 0.0021;c_thirst -= 0.0022;exit;}
if ( temp > 95 && temp <= 100 ){c_food -= 0.002;c_thirst -= 0.00217;exit;}
if ( temp > 90 && temp <= 95 ){c_food -= 0.00185;c_thirst -= 0.0021;exit;}
if ( temp > 85 && temp <= 90 ){c_food -= 0.0017;c_thirst -= 0.00185;exit;}
if ( temp > 80 && temp <= 85 ){c_food -= 0.0015;c_thirst -= 0.00158;exit;}
if ( temp > 75 && temp <= 80 ){c_food -= 0.00135;c_thirst -= 0.00138;exit;}
if ( temp > 70 && temp <= 75 ){c_food -= 0.0012;c_thirst -= 0.00122;exit;}
if ( temp > 65 && temp <= 70 ){c_food -= 0.0011;c_thirst -= 0.0012;exit;}
if ( temp > 60 && temp <= 65 ){c_food -= 0.00125;c_thirst -= 0.0011;exit;}
if ( temp > 55 && temp <= 60 ){c_food -= 0.00175;c_thirst -= 0.001;exit;}
if ( temp > 50 && temp <= 55 ){c_food -= 0.00225;c_thirst -= 0.001;exit;}
if ( temp > 45 && temp <= 50 ){c_food -= 0.00275;c_thirst -= 0.001;exit;}
if ( temp > 40 && temp <= 45 ){c_food -= 0.00315;c_thirst -= 0.001;exit;}
if ( temp > 35 && temp <= 40 ){c_food -= 0.0034;c_thirst -= 0.001;exit;}
if ( temp <= 35 ){c_food -= 0.0035;c_thirst -= 0.001;exit;}
