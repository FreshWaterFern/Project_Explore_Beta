/// decal_handle()

var i = 0;var list_size = ds_list_size(global.ai_sdecal);
var g_x = 0;var g_y = 0;var g_s = 0;
for(i=0;i<list_size;i++)
{
    g_x = global.ai_xdecal[| i];
    g_y = global.ai_ydecal[| i];
    if ( g_x > view_xview[0]-32 && g_x < view_xview[0]+view_wview[0]+32 && g_y > view_yview[0]-32 && g_y < view_yview[0]+view_hview[0]+32 )
    {
    g_s = asset_get_index(global.ai_sdecal[| i]);
    draw_sprite(g_s,0,g_x,g_y);
    }
}
    

switch(obj_main_logic.g_decals){
    case 0:{ // Low
    if ( g_x > view_xview[0]-1024 && g_x < view_xview[0]+view_wview[0]+1024 && g_y > view_yview[0]-1024 && g_y < view_yview[0]+view_hview[0]+1024 )
    {
    ds_list_delete(global.ai_sdecal,i);
    ds_list_delete(global.ai_xdecal,i);
    ds_list_delete(global.ai_ydecal,i);
    i--;
    }
    if ( ds_list_size(global.ai_sdecal) > 30 )
    {
    ds_list_delete(global.ai_sdecal,i);
    ds_list_delete(global.ai_xdecal,i);
    ds_list_delete(global.ai_ydecal,i);
    }
    break;}
    case 1:{ // Medium
    if ( g_x > view_xview[0]-(1024*3) && g_x < view_xview[0]+view_wview[0]+(1024*3) && g_y > view_yview[0]-(1024*3) && g_y < view_yview[0]+view_hview[0]+(1024*3) )
    {
    ds_list_delete(global.ai_sdecal,i);
    ds_list_delete(global.ai_xdecal,i);
    ds_list_delete(global.ai_ydecal,i);
    i--;
    }
    if ( ds_list_size(global.ai_sdecal) > 60 )
    {
    ds_list_delete(global.ai_sdecal,i);
    ds_list_delete(global.ai_xdecal,i);
    ds_list_delete(global.ai_ydecal,i);
    }
    break;}
    case 2:{ // High
    if ( g_x > view_xview[0]-(1024*6) && g_x < view_xview[0]+view_wview[0]+(1024*6) && g_y > view_yview[0]-(1024*2) && g_y < view_yview[0]+view_hview[0]+(1024*6) )
    {
    ds_list_delete(global.ai_sdecal,i);
    ds_list_delete(global.ai_xdecal,i);
    ds_list_delete(global.ai_ydecal,i);
    i--;
    }
    if ( ds_list_size(global.ai_sdecal) > 100 )
    {
    ds_list_delete(global.ai_sdecal,i);
    ds_list_delete(global.ai_xdecal,i);
    ds_list_delete(global.ai_ydecal,i);
    }
    break;}
    case 3:{ // Very High
    if ( g_x > view_xview[0]-(1024*10) && g_x < view_xview[0]+view_wview[0]+(1024*10) && g_y > view_yview[0]-(1024*10) && g_y < view_yview[0]+view_hview[0]+(1024*10) )
    {
    ds_list_delete(global.ai_sdecal,i);
    ds_list_delete(global.ai_xdecal,i);
    ds_list_delete(global.ai_ydecal,i);
    i--;
    }
    if ( ds_list_size(global.ai_sdecal) > 175 )
    {
    ds_list_delete(global.ai_sdecal,i);
    ds_list_delete(global.ai_xdecal,i);
    ds_list_delete(global.ai_ydecal,i);
    }
    break;}
    case 4:{ // Ultra
    if ( g_x > view_xview[0]-(1024*20) && g_x < view_xview[0]+view_wview[0]+(1024*20) && g_y > view_yview[0]-(1024*20) && g_y < view_yview[0]+view_hview[0]+(1024*20) )
    {
    ds_list_delete(global.ai_sdecal,i);
    ds_list_delete(global.ai_xdecal,i);
    ds_list_delete(global.ai_ydecal,i);
    i--;
    }
    if ( ds_list_size(global.ai_sdecal) > 250 )
    {
    ds_list_delete(global.ai_sdecal,i);
    ds_list_delete(global.ai_xdecal,i);
    ds_list_delete(global.ai_ydecal,i);
    }
    break;}
    }
