/// db_crafting_get_name(item_name)
gml_pragma("forceinline");
return ds_map_find_value(global.crafting_map,string_lower(string(argument0)));
