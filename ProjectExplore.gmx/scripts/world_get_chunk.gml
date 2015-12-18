/// world_get_chunk(x,y)

// This function will return an array like this, a1[0] = x; a1[1] = y;

gml_pragma("forceinline");

chunk_get[0] = floor(argument0/1280);
chunk_get[1] = floor(argument1/1280);

return chunk_get
