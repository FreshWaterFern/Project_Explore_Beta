/// db_object_get_name(item_name)
gml_pragma("forceinline");
return ds_map_find_value(global.object_map,string_lower(string(argument0)));
