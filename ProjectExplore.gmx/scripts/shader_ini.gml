/// shader_ini()

/*
    This script will parse through each shader in the game and
    confirm that they all have compiled correctly. If any have
    not then they shall be marked as 'false' in a list.
    This will prevent users from facing crashes while playing.
*/

global.shader_list = ds_list_create();

ds_list_add(global.shader_list,shader_is_compiled(shd_vignette_noise)); // 0
ds_list_add(global.shader_list,shader_is_compiled(shd_bright_contrast)); // 1
ds_list_add(global.shader_list,shader_is_compiled(shd_overlay)); // 2
ds_list_add(global.shader_list,shader_is_compiled(sh_better_scaling_bicubic)); // 3
ds_list_add(global.shader_list,shader_is_compiled(sh_better_scaling_hq4x)); // 4
ds_list_add(global.shader_list,shader_is_compiled(sh_better_scaling_5xbra)); // 5
ds_list_add(global.shader_list,shader_is_compiled(sh_better_scaling_5xbrb)); // 6
ds_list_add(global.shader_list,shader_is_compiled(sh_better_scaling_5xbrc)); // 7
ds_list_add(global.shader_list,shader_is_compiled(sh_better_scaling_supersampling_2x2)); // 8
ds_list_add(global.shader_list,shader_is_compiled(sh_better_scaling_supersampling_3x3)); // 9
ds_list_add(global.shader_list,shader_is_compiled(sh_better_scaling_supersampling_4x4)); // 10

var shader_count = 0;

if ( global.shader_list[|0] ==  false ){
file_log_write("[SHADER] Vignette Noise failed to compile!");
}else{shader_count++;}
if ( global.shader_list[|1] ==  false ){
file_log_write("[SHADER] Brightness/Contrast failed to compile!");
}else{shader_count++;}
if ( global.shader_list[|2] ==  false ){
file_log_write("[SHADER] Overlay failed to compile!");
}else{shader_count++;}
if ( global.shader_list[|3] ==  false ){
file_log_write("[SHADER] Scaling (Bicubic) failed to compile!");
}else{shader_count++;}
if ( global.shader_list[|4] ==  false ){
file_log_write("[SHADER] Scaling (HQ 4x) failed to compile!");
}else{shader_count++;}
if ( global.shader_list[|5] ==  false ){
file_log_write("[SHADER] Scaling (BR 5x Rounded) failed to compile!");
}else{shader_count++;}
if ( global.shader_list[|6] ==  false ){
file_log_write("[SHADER] Scaling (BR 5x Semi-Rounded) failed to compile!");
}else{shader_count++;}
if ( global.shader_list[|7] ==  false ){
file_log_write("[SHADER] Scaling (BR 5x Squared) failed to compile!");
}else{shader_count++;}
if ( global.shader_list[|8] ==  false ){
file_log_write("[SHADER] Super Sampling 2x2 failed to compile!");
}else{shader_count++;}
if ( global.shader_list[|9] ==  false ){
file_log_write("[SHADER] Super Sampling 3x3 failed to compile!");
}else{shader_count++;}
if ( global.shader_list[|10] ==  false ){
file_log_write("[SHADER] Super Sampling 4x4 failed to compile!");
}else{shader_count++;}

if ( shader_count == 11 ){
file_log_write("All shaders have compiled successfully!");
}
