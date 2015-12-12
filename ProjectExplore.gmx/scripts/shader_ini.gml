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
