#define image_system_init
///image_system_init()
global.m_ex_image = ds_map_create();


#define image_system_cleanup
///image_system_cleanup()
if( ds_exists( global.m_ex_image , ds_type_map ) ){
	while( ds_map_size( global.m_ex_image ) > 0 ){
		var _key = ds_map_find_first( global.m_ex_image );
		image_group_destroy( _key );
	}
	ds_map_destroy( global.m_ex_image );
	draw_texture_flush();
	show_debug_message( "IMAGE SYSTEM: Cleaned all image system memory" );
} else {
	show_debug_message( "IMAGE SYSTEM: Failed to clean image system, it is already clean");
}


#define draw_image
///draw_image(image,subimg,x,y)
gml_pragma("forceinline"); // in YYC, proccessing boost

var _c_subimg = ( floor(argument1) mod argument0[# 0 , 0 ] ) * 3;
draw_background_part(
    argument0[# 5 + _c_subimg , 0 ] , 
    argument0[# 6 + _c_subimg , 0 ] ,
    argument0[# 7 + _c_subimg , 0 ] ,
    argument0[# 1 , 0 ] ,
    argument0[# 2 , 0 ] ,
    argument2 - argument0[# 3 , 0 ] ,
    argument3 - argument0[# 4 , 0 ]
);


#define draw_image_ext
///draw_image_ext(image,subimg,x,y,xscale,yscale,rot,colour,alpha)
gml_pragma("forceinline"); // in YYC, proccessing boost

var _c_subimg = ( floor(argument1) mod argument0[# 0 , 0 ] ) * 3;
draw_background_general(
    argument0[# 5 + _c_subimg , 0 ] , 
    argument0[# 6 + _c_subimg , 0 ] ,
    argument0[# 7 + _c_subimg , 0 ] ,
    argument0[# 1 , 0 ] ,
    argument0[# 2 , 0 ] ,
    argument2 - lengthdir_x( argument0[# 3 , 0 ] , argument6 )*argument4 - lengthdir_x( argument0[# 4 , 0 ] , argument6 - 90 )*argument5 ,
    argument3 - lengthdir_y( argument0[# 3 , 0 ] , argument6 )*argument4 - lengthdir_y( argument0[# 4 , 0 ] , argument6 - 90 )*argument5 ,
    argument4 ,
    argument5 ,
    argument6 ,
    argument7 ,
    argument7 ,
    argument7 ,
    argument7 ,
    argument8
);


#define draw_image_general
///draw_image_general(sprite,subimg,left,top,width,height,x,y,xscale,yscale,rot,c1,c2,c3,c4,alpha)
gml_pragma("forceinline"); // in YYC, proccessing boost

var _c_subimg = ( floor(argument1) mod argument0[# 0 , 0 ] ) * 3;
draw_background_general(
    argument0[# 5 + _c_subimg , 0 ] , 
    argument0[# 6 + _c_subimg , 0 ] + argument2 ,
    argument0[# 7 + _c_subimg , 0 ] + argument3 ,
    argument4 ,
    argument5 ,
    argument6 ,
    argument7 ,
    argument8 ,
    argument9 ,
    argument10 ,
    argument11 ,
    argument12 ,
    argument13 ,
    argument14 ,
    argument15
);


#define draw_image_part
///draw_image_part(sprite,subimg,left,top,width,height,x,y)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

var _c_subimg = ( floor(argument1) mod argument0[# 0 , 0 ] ) * 3;
draw_background_part(
    argument0[# 5 + _c_subimg , 0 ] , 
    argument0[# 6 + _c_subimg , 0 ] + argument2 ,
    argument0[# 7 + _c_subimg , 0 ] + argument3 ,
    argument4 ,
    argument5 ,
    argument6 ,
    argument7
);


#define draw_image_part_ext
///draw_image_part_ext(sprite,subimg,left,top,width,height,x,y,xscale,yscale,colour,alpha)
gml_pragma("forceinline"); // in YYC, proccessing boost

var _c_subimg = ( floor(argument1) mod argument0[# 0 , 0 ] ) * 3;
draw_background_part_ext(
    argument0[# 5 + _c_subimg , 0 ] , 
    argument0[# 6 + _c_subimg , 0 ] + argument2 ,
    argument0[# 7 + _c_subimg , 0 ] + argument3 ,
    argument4 ,
    argument5 ,
    argument6 ,
    argument7 ,
    argument8 ,
    argument9 ,
    argument10 ,
    argument11
);


#define draw_image_pos
///draw_image_pos(sprite,subimg,x1,y1,x2,y2,x3,y3,x4,y4,alpha)
gml_pragma("forceinline"); // in YYC, proccessing boost

var _c_subimg = ( floor(argument1) mod argument0[# 0 , 0 ] ) * 3;
var _bck = argument0[# 5 + _c_subimg , 0 ];

var _u_x = argument0[# 6 + _c_subimg , 0 ] / background_get_width( _bck );
var _u_y = argument0[# 7 + _c_subimg , 0 ] / background_get_height( _bck );
var _u_w = argument0[# 1 , 0 ] / background_get_width( _bck );
var _u_h = argument0[# 2 , 0 ] / background_get_height( _bck );

draw_set_alpha( argument10 );
draw_primitive_begin_texture( pr_trianglelist , background_get_texture( _bck ) );
    draw_vertex_texture( argument2 , argument3 , _u_x , _u_y );
    draw_vertex_texture( argument4 , argument5 , _u_x+_u_w , _u_y );
    draw_vertex_texture( argument6 , argument7 , _u_x+_u_w , _u_y+_u_h );
    
    draw_vertex_texture( argument8 , argument9 , _u_x , _u_y+_u_h );
    draw_vertex_texture( argument2 , argument3 , _u_x , _u_y );
    draw_vertex_texture( argument6 , argument7 , _u_x+_u_w , _u_y+_u_h );
draw_primitive_end();


#define draw_image_stretched
///draw_image_stretched(sprite,subimg,x,y,w,h)
gml_pragma("forceinline"); // in YYC, proccessing boost

var _c_subimg = ( floor(argument1) mod argument0[# 0 , 0 ] ) * 3;
draw_background_part_ext(
    argument0[# 5 + _c_subimg , 0 ] , 
    argument0[# 6 + _c_subimg , 0 ] ,
    argument0[# 7 + _c_subimg , 0 ] ,
    argument0[# 1 , 0 ] ,
    argument0[# 2 , 0 ] ,
    argument2 ,
    argument3 ,
    ( argument4 / argument0[# 1 , 0 ] ) ,
    ( argument5 / argument0[# 2 , 0 ] ) ,
    c_white ,
    1
);


#define draw_image_stretched_ext
///draw_image_stretched_ext(sprite,subimg,x,y,w,h,colour,alpha)
gml_pragma("forceinline"); // in YYC, proccessing boost

var _c_subimg = ( floor(argument1) mod argument0[# 0 , 0 ] ) * 3;
draw_background_part_ext(
    argument0[# 5 + _c_subimg , 0 ] , 
    argument0[# 6 + _c_subimg , 0 ] ,
    argument0[# 7 + _c_subimg , 0 ] ,
    argument0[# 1 , 0 ] ,
    argument0[# 2 , 0 ] ,
    argument2 ,
    argument3 ,
    ( argument4 / argument0[# 1 , 0 ] ) ,
    ( argument5 / argument0[# 2 , 0 ] ) ,
    argument6 ,
    argument7
);


#define draw_image_tiled
///draw_image_tiled(sprite,subimg,x,y)
gml_pragma("forceinline"); // in YYC, proccessing boost

var _c_subimg = ( floor(argument1) mod argument0[# 0 , 0 ] ) * 3;

var _w = argument0[# 1 , 0 ];
var _h = argument0[# 2 , 0 ];
var _bck  = argument0[# 5 + _c_subimg , 0 ];
var _left = argument0[# 6 + _c_subimg , 0 ];
var _top  = argument0[# 7 + _c_subimg , 0 ];
var _xo = ( argument2 mod _w );
var _yo = ( argument3 mod _h );

for( var _x = -_w; _x <= view_wview[ view_current ]; _x += _w ){
    for( var _y = -_h; _y <= view_hview[ view_current ]; _y += _h ){
        draw_background_part(
            _bck , 
            _left ,
            _top ,
            _w ,
            _h ,
            _xo + _x ,
            _yo + _y
        );
    }
}


#define draw_image_tiled_ext
///draw_image_tiled_ext(sprite,subimg,x,y,xscale,yscale,colour,alpha)
gml_pragma("forceinline"); // in YYC, proccessing boost

var _c_subimg = ( floor(argument1) mod argument0[# 0 , 0 ] ) * 3;

var _w = argument0[# 1 , 0 ];
var _h = argument0[# 2 , 0 ];
var _bck  = argument0[# 5 + _c_subimg , 0 ];
var _left = argument0[# 6 + _c_subimg , 0 ];
var _top  = argument0[# 7 + _c_subimg , 0 ];
var _xo = ( argument2 mod (_w*argument4) );
var _yo = ( argument3 mod (_h*argument5) );

for( var _x = -_w * argument4; _x <= view_wview[ view_current ]; _x += _w * argument4 ){
    for( var _y = -_h * argument5; _y <= view_hview[ view_current ]; _y += _h * argument5 ){
        draw_background_part_ext(
            _bck , 
            _left ,
            _top ,
            _w ,
            _h ,
            _xo + _x ,
            _yo + _y ,
            argument4 ,
            argument5 ,
            argument6 ,
            argument7
        );
    }
}


#define image_group_create
///image_group_create(name)

if( !ds_map_exists( global.m_ex_image , argument0 ) ){
    var _l = ds_list_create();
    ds_map_add_list( global.m_ex_image , argument0 , _l );
    _l[| 0 ] = ds_list_create(); // 'Image' list
    _l[| 1 ] = ds_list_create(); // Background list
    ds_list_mark_as_list( _l , 0 );
    ds_list_mark_as_list( _l , 1 );
    return argument0;
} else {
    return -1;
}


#define image_group_destroy
///image_group_destroy(group)
if( ds_map_exists( global.m_ex_image , argument0 ) ){
    var _l = global.m_ex_image[? argument0 ];
    var _l_image = _l[| 0 ];
    var _l_background = _l[| 1 ];
    
    for( var n = 0; n < ds_list_size( _l_image ); n++ ){
        ds_grid_destroy( _l_image[| n ] );
    }
    
    for( var n = 0; n < ds_list_size( _l_background ); n++ ){
        background_delete( _l_background[| n ] );
    }
	ds_list_destroy( _l_image );
	ds_list_destroy( _l_background );
	ds_list_destroy( _l );
    ds_map_delete( global.m_ex_image , argument0 );
} else {
    show_error( "The group '" + string( argument0 ) + "' you are trying to clear does not exist" , false );
}


#define image_group_clear
///image_group_clear(group)
if( ds_map_exists( global.m_ex_image , argument0 ) ){
    var _l = global.m_ex_image[? argument0 ];
    var _l_image = _l[| 0 ];
    var _l_background = _l[| 1 ];
    
    for( var n = 0; n < ds_list_size( _l_image ); n++ ){
        ds_grid_destroy( _l_image[| n ] );
    }
    
    for( var n = 0; n < ds_list_size( _l_background ); n++ ){
        background_delete( _l_background[| n ] );
    }
    ds_list_clear( _l_image );
    ds_list_clear( _l_background );
} else {
    show_error( "The group '" + string( argument0 ) + "' you are trying to clear does not exist" , false );
}


#define image_load_start
///image_load_start(group,tex_page_width,tex_page_height,tex_offset)
if( !ds_map_exists( global.m_ex_image , argument0 ) ){
    show_error( "Unknown image group '" + string( argument0 ) + "'" , true );
}
__s_group      = global.m_ex_image[? argument0 ];
__s_tex_width  = argument1; // TEXTURE PAGE WIDTH
__s_tex_height = argument2; // TEXTURE PAGE HEIGHT
__s_tex_offset = argument3; // SPRITE OFFSET ON THE TEXTURE PAGE

// TEMPORARY SURFACE FOR DRAWING THE TEXTURE PAGE ON
__s_surf_texpage = surface_create( argument1 , argument2 );
//surface_set_target( __s_surf_texpage );

// LIST THAT WILL STORE THE UNSORTED LOADING SPRITE DATA
__s_l_background  = ds_list_create();
// LIST THAT WILL STORE THE SORTED LOADING SPRITE DATA
__s_l_back_sorted = ds_list_create();


#define image_load_add
///image_load_add(identifier,fname,subimg,xorig,yorig)
if( file_exists( argument1 ) ){
    ds_list_add( __s_l_background , background_add( argument1 , false , false ) , argument0 , max(argument2,1) , argument3 , argument4 , argument1 );
} else {
    show_error( "Could not load image from location '" + string( argument1 ) + "'" , true );
}


#define image_load_get
///image_load_get(identifier)
var _val = temp_sprite_get[? argument0 ];
if( is_undefined( _val ) ){
    show_error( "A sprite with the identifier '" + string( argument0 ) + "' was not found" , false );
}
ds_map_delete( temp_sprite_get , argument0 );
// DELETE THE TEMP MAP AFTER IT HAS BEEN EMPTIED
if( ds_map_size( temp_sprite_get ) == 0 ){
    ds_map_destroy( temp_sprite_get );
}
return( _val );


#define image_load_finish
///image_load_finish()

var _l_image      = __s_group[| 0 ];
var _l_background = __s_group[| 1 ];

draw_enable_alphablend( false );

// SORT THEIR IMAGES BY THEIR SIZE
for( var n = 0; n < ds_list_size( __s_l_background ); n += 6 ){
    var _size = ( ( background_get_width( __s_l_background[| n ] ) div __s_l_background[| n + 2 ] ) + background_get_height( __s_l_background[| n ] ) ) / 2;
    if( ds_list_size( __s_l_back_sorted ) > 0 ){
        for( var i = 0; i < ds_list_size( __s_l_back_sorted ); i += 7 ){
            if( _size > __s_l_back_sorted[| i ] ){
				ds_list_insert( __s_l_back_sorted , i , __s_l_background[| n + 5 ] ); // FNAME
                ds_list_insert( __s_l_back_sorted , i , __s_l_background[| n + 4 ] ); // YORIG
                ds_list_insert( __s_l_back_sorted , i , __s_l_background[| n + 3 ] ); // XORIG
                ds_list_insert( __s_l_back_sorted , i , __s_l_background[| n + 2 ] ); // SUBIMG
                ds_list_insert( __s_l_back_sorted , i , __s_l_background[| n + 1 ] ); // IDENTIFIER
                ds_list_insert( __s_l_back_sorted , i , __s_l_background[| n ] );     // ID
                ds_list_insert( __s_l_back_sorted , i , _size );
                break;
            } else if( i == ds_list_size( __s_l_back_sorted ) - 7 ){
                ds_list_add( __s_l_back_sorted , 
                    _size ,                      // SIZE
                    __s_l_background[| n ] ,     // ID
                    __s_l_background[| n + 1 ] , // IDENTIFIER
                    __s_l_background[| n + 2 ] , // SUBIMG
                    __s_l_background[| n + 3 ] , // XORIG
                    __s_l_background[| n + 4 ] , // YORIG
					__s_l_background[| n + 5 ]   // FNAME
                );
                break;
            }
        }
    } else {
        ds_list_add( __s_l_back_sorted , 
            _size ,                      // SIZE
            __s_l_background[| n ] ,     // ID
            __s_l_background[| n + 1 ] , // IDENTIFIER
            __s_l_background[| n + 2 ] , // SUBIMG
            __s_l_background[| n + 3 ] , // XORIG
            __s_l_background[| n + 4 ] , // YORIG
			__s_l_background[| n + 5 ]   // FNAME
        );
    }
}



// CREATE THE DATA STRUCTURES NECESSARY FOR ADDING THE SPRITES ON THE TEXTURE PAGE
temp_sprite_get = ds_map_create();

var _l_areas = ds_list_create();
var _l_trash = ds_list_create();
ds_list_add( _l_areas , 0 , 0 , __s_tex_width , __s_tex_height );

var _l_texpage = ds_list_create();
var _back = background_create_colour( __s_tex_width , __s_tex_height , c_black );
ds_list_add( _l_texpage , 
    surface_create( __s_tex_width , __s_tex_height ) , 
    _back
);

surface_set_target( _l_texpage[| ds_list_size( _l_texpage ) - 2 ] );
draw_clear_alpha( 0,0 ); // this can be removed
var _bck = -1;

while( ds_list_size( __s_l_back_sorted ) > 0 ){ // LOOP THROUGH THE SPRITES AND ADD THEM TO THE TEXTURE PAGE WHERE POSSIBLE
    _bck = __s_l_back_sorted[| 1 ];
    
    var spr_number = __s_l_back_sorted[| 3 ];
    var subimg_w = background_get_width( _bck ) div spr_number;
    var _image_drawn = false;
    var _image_maindata_added = false;
    for( var i = 0; i < __s_l_back_sorted[| 3 ]; i++ ){
        var _min_area_size = $10000000000000;
        var _min_area_id   = -1;
        for( var n = 0; n < ds_list_size( _l_areas ); n += 4 ){
            if( subimg_w <= _l_areas[| n + 2 ] and background_get_height( _bck ) <= _l_areas[| n + 3 ] ){
                if( ( ( _l_areas[| n + 2 ] + _l_areas[| n + 3 ] ) / 2 ) < _min_area_size ){
                    _min_area_size = ( _l_areas[| n + 2 ] + _l_areas[| n + 3 ] ) / 2;
                    _min_area_id = n;
                }
            }
        }
        
        // DRAW THE IMAGES ON THE TEXTURE PAGE
        if( _min_area_id != -1 ){
            n = _min_area_id;
            draw_background_part( _bck , i * subimg_w  , 0 , subimg_w , background_get_height( _bck ) , _l_areas[| n ] , _l_areas[| n + 1 ] );
            _image_drawn = true;
            
            if( !_image_maindata_added ){
                // CREATE THE GRID FOR THE IMAGE DATA
                var _g_image = ds_grid_create( 6 + __s_l_back_sorted[| 3 ] * 3 , 1 );
                ds_list_add( _l_image , _g_image );
                var _pos = 0;
                // ADD THE IDENTIFIER TO THE MAP, THE USER WILL GRAB THE SPRITE ID FROM THIS MAP
                ds_map_add( temp_sprite_get , __s_l_back_sorted[| 2 ] , _g_image );
                // ADD THE MAIN DATA OF THE SPRITE TO THE SPRITE DATA STRUCTURE
                _g_image[# _pos , 0 ] = __s_l_back_sorted[| 3 ]; _pos++;       // SUBIMAGE
                _g_image[# _pos , 0 ] = subimg_w; _pos++;                      // SUBIMAGE WIDTH
                _g_image[# _pos , 0 ] = background_get_height( _bck ); _pos++; // SUBIMAGE HEIGHT
                _g_image[# _pos , 0 ] = __s_l_back_sorted[| 4 ]; _pos++;       // XORIGIN
                _g_image[# _pos , 0 ] = __s_l_back_sorted[| 5 ]; _pos++;       // YORIGIN
                _image_maindata_added = true;
            }
            
            // ADD THE SUBIMAGE OF THE SPRITE TO THE SPRITE DATA STRUCTURE
            _g_image[# _pos , 0 ] = _back; _pos++;              // BACKGROUND
            _g_image[# _pos , 0 ] = _l_areas[| n ]; _pos++;     // X
            _g_image[# _pos , 0 ] = _l_areas[| n + 1 ]; _pos++; // Y
            
			if( i == __s_l_back_sorted[| 3 ] - 1 ){
				_g_image[# _pos , 0 ] = __s_l_back_sorted[| 6 ]; // FNAME
			}
			
            // ADD THE NEW EMPTY AREAS TO THE AREA LIST
            if( background_get_height( _bck ) < _l_areas[| n + 3 ] ){              // Y                                          W                           H
                ds_list_add( _l_areas , _l_areas[| n ] , _l_areas[| n + 1 ] + background_get_height( _bck ) + __s_tex_offset , _l_areas[| n + 2 ] , _l_areas[| n + 3 ] - background_get_height( _bck ) - __s_tex_offset );
            }
            if( subimg_w < _l_areas[| n + 2 ] ){ // X                                 Y                                          W                           H
                ds_list_add( _l_areas , _l_areas[| n ] + subimg_w + __s_tex_offset , _l_areas[| n + 1 ] , _l_areas[| n + 2 ] - subimg_w - __s_tex_offset , background_get_height( _bck ) );
            }
            
            // REMOVE THE CURRENT AREA FROM THE AREA LIST
            repeat( 4 )
                ds_list_delete( _l_areas , n );
        } else {
            show_debug_message( "Warning: Not enough room on the texturepage, creating another one, this might slow down the game" );
            
            ds_list_clear( _l_areas );
            ds_list_add( _l_areas , 0 , 0 , __s_tex_width , __s_tex_height );
            
            _back = background_create_colour( __s_tex_width , __s_tex_height , c_black );
            ds_list_add( _l_texpage , surface_create( __s_tex_width , __s_tex_height ) , _back);
            surface_reset_target();
            surface_set_target( _l_texpage[| ds_list_size( _l_texpage ) - 2 ] );
            draw_clear_alpha( 0,0 );
            
            i--;
        }
    }
    
    if( ds_list_size( _l_areas ) == 0 ){
        show_debug_message( "Warning: Something went wrong, creating another texturepage" );
        
        ds_list_clear( _l_areas );
        ds_list_add( _l_areas , 0 , 0 , __s_tex_width , __s_tex_height );
        
        _back = background_create_colour( __s_tex_width , __s_tex_height , c_black );
        ds_list_add( _l_texpage , surface_create( __s_tex_width , __s_tex_height ) , _back );
        surface_reset_target();
        surface_set_target( _l_texpage[| ds_list_size( _l_texpage ) - 2 ] );
    }
    if( _image_drawn ){
        repeat( 7 ){
            ds_list_delete( __s_l_back_sorted , 0 );
        }
        ds_list_add( _l_trash , _bck );
    }
}
surface_reset_target();

// Clear memory
for( var n = 0; n < ds_list_size( _l_trash ); n++ ){
    background_delete( _l_trash[| n ] );
}
// CREATE THE BACKGROUND (TEXTUREPAGE)
for( var n = 0; n < ds_list_size( _l_texpage ); n += 2 ){
    var _back_temp = background_create_from_surface( _l_texpage[| n ] , 0 , 0 , surface_get_width( _l_texpage[| n ] ) , surface_get_height( _l_texpage[| n ] ) , false , false );
    background_assign( _l_texpage[| n + 1 ] , _back_temp );
    ds_list_add( _l_background , _l_texpage[| n + 1 ] );
    background_delete( _back_temp );
    surface_free( _l_texpage[| n ] );
}

draw_enable_alphablend( true );

// Clear memory
surface_free( __s_surf_texpage );
ds_list_destroy( _l_areas );
ds_list_destroy( __s_l_back_sorted );
ds_list_destroy( __s_l_background );
ds_list_destroy( _l_trash );
ds_list_destroy( _l_texpage );    


#define image_exists
///image_exists(image)
gml_pragma("forceinline");

if( ds_exists( argument0 , ds_type_grid ) ){
    if( ds_grid_height( argument0 ) == 1 ){
        return true;
    } else {
        return false;
    }
} else {
    return false;
}


#define image_get_filename
///image_get_filename(ind)
gml_pragma("forceinline"); 
return( argument0[# ds_grid_width( argument0 ) - 1 , 0 ] );


#define image_get_number
///image_get_number(ind)
gml_pragma("forceinline"); 
return( argument0[# 0 , 0 ] );


#define image_get_width
///image_get_width(ind)
gml_pragma("forceinline"); 
return( argument0[# 1 , 0 ] );


#define image_get_height
///image_get_height(ind)
gml_pragma("forceinline"); 
return( argument0[# 2 , 0 ] );


#define image_get_xoffset
///image_get_xoffset(ind)
gml_pragma("forceinline");
return( argument0[# 3 , 0 ] );


#define image_get_yoffset
///image_get_yoffset(ind)
gml_pragma("forceinline");
return( argument0[# 4 , 0 ] );


#define image_get_uvs
///image_get_uvs(spr,subimg)
gml_pragma("forceinline");
var _c_subimg = ( floor(argument1) mod argument0[# 0 , 0 ] ) * 3;
var _bck = argument0[# 5 + _c_subimg , 0 ];

var _ar;
_ar[ 0 ] = argument0[# 6 + _c_subimg , 0 ] / background_get_width( _bck );
_ar[ 1 ] = argument0[# 7 + _c_subimg , 0 ] / background_get_width( _bck );
_ar[ 2 ] = (argument0[# 6 + _c_subimg , 0 ] + argument0[# 1 , 0 ]) / background_get_width( _bck );
_ar[ 3 ] = (argument0[# 7 + _c_subimg , 0 ] + argument0[# 2 , 0 ]) / background_get_width( _bck );
return( _ar );


#define image_set_offset
///image_set_offset(ind,xoffset,yoffset)
gml_pragma("forceinline");
argument0[# 3 , 0 ] = argument1;
argument0[# 4 , 0 ] = argument2;


#define image_get_texturepage
///image_get_texturepage(sprite,subimg)
gml_pragma("forceinline"); 

var _c_subimg = ( floor(argument1) mod argument0[# 0 , 0 ] ) * 3;
return( argument0[# 5 + _c_subimg , 0 ] );


#define image_save
///image_save(ind,subimg,fname)
var _c_subimg = ( floor(argument1) mod argument0[# 0 , 0 ] ) * 3;

var _surf = surface_create( argument0[# 1 , 0 ] , argument0[# 2 , 0 ] );

surface_set_target( _surf );
    draw_clear_alpha( 0 , 0 );
    draw_background_part(
        argument0[# 5 + _c_subimg , 0 ] , 
        argument0[# 6 + _c_subimg , 0 ] ,
        argument0[# 7 + _c_subimg , 0 ] ,
        argument0[# 1 , 0 ] ,
        argument0[# 2 , 0 ] ,
        0 ,
        0
    );
surface_reset_target();
surface_save( _surf , argument2 );
surface_free( _surf );


#define image_save_strip
///image_save_strip(ind,fname)
var _subimg_count = argument0[# 0 , 0 ];

var _surf = surface_create( argument0[# 1 , 0 ] * _subimg_count , argument0[# 2 , 0 ] );
surface_set_target( _surf );
    draw_clear_alpha( 0 , 0 );
    for( var n = 0; n < _subimg_count; n++ ){
        draw_background_part(
            argument0[# 5 + n*3 , 0 ] , 
            argument0[# 6 + n*3 , 0 ] ,
            argument0[# 7 + n*3 , 0 ] ,
            argument0[# 1 , 0 ] ,
            argument0[# 2 , 0 ] ,
            argument0[# 1 , 0 ] * n ,
            0
        );
    }
surface_reset_target();

surface_save( _surf , argument1 );
surface_free( _surf );