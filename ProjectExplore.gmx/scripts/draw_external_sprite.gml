#define draw_external_sprite
///draw_external_sprite(sprite,subimg,x,y)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

var _subimg = l_external_sprite[@ argument0 ];
var _c_subimg = ( floor(argument1) mod _subimg ) * 3;
draw_background_part(
    l_external_sprite[@ argument0 + 5 + _c_subimg ] , 
    l_external_sprite[@ argument0 + 6 + _c_subimg ] ,
    l_external_sprite[@ argument0 + 7 + _c_subimg ] ,
    l_external_sprite[@ argument0 + 1 ] ,
    l_external_sprite[@ argument0 + 2 ] ,
    argument2 - l_external_sprite[@ argument0 + 3 ] ,
    argument3 - l_external_sprite[@ argument0 + 4 ]
);


#define draw_external_sprite_ext
///draw_external_sprite_ext(sprite,subimg,x,y,xscale,yscale,rot,colour,alpha)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

var _subimg = l_external_sprite[@ argument0 ];
var _c_subimg = ( floor(argument1) mod _subimg ) * 3;
draw_background_general(
    l_external_sprite[@ argument0 + 5 + _c_subimg ] , 
    l_external_sprite[@ argument0 + 6 + _c_subimg ] ,
    l_external_sprite[@ argument0 + 7 + _c_subimg ] ,
    l_external_sprite[@ argument0 + 1 ] ,
    l_external_sprite[@ argument0 + 2 ] ,
    argument2 - lengthdir_x( l_external_sprite[@ argument0 + 3 ] , argument6 )*argument4 - lengthdir_x( l_external_sprite[@ argument0 + 4 ] , argument6 - 90 )*argument5 /* - lengthdir_x( l_external_sprite[@ argument0 + 6 ] , argument6 ) + lengthdir_x( l_external_sprite[@ argument0 + 7 ] , argument6 + 90 )*/,
    argument3 - lengthdir_y( l_external_sprite[@ argument0 + 3 ] , argument6 )*argument4 - lengthdir_y( l_external_sprite[@ argument0 + 4 ] , argument6 - 90 )*argument5/* - lengthdir_y( l_external_sprite[@ argument0 + 7 ] , argument6 ) + lengthdir_y( l_external_sprite[@ argument0 + 6 ] , argument6 + 90 )*/,
    argument4 ,
    argument5 ,
    argument6 ,
    argument7 ,
    argument7 ,
    argument7 ,
    argument7 ,
    argument8
);


#define draw_external_sprite_general
///draw_external_sprite_general(sprite,subimg,left,top,width,height,x,y,xscale,yscale,rot,c1,c2,c3,c4,alpha)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

var _subimg = l_external_sprite[@ argument0 ];
var _c_subimg = ( floor(argument1) mod _subimg ) * 3;
draw_background_general(
    l_external_sprite[@ argument0 + 5 + _c_subimg ] , 
    l_external_sprite[@ argument0 + 6 + _c_subimg ] + argument2 ,
    l_external_sprite[@ argument0 + 7 + _c_subimg ] + argument3 ,
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


#define draw_external_sprite_part
///draw_external_sprite_part(sprite,subimg,left,top,width,height,x,y)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

var _subimg = l_external_sprite[@ argument0 ];
var _c_subimg = ( floor(argument1) mod _subimg ) * 3;
draw_background_part(
    l_external_sprite[@ argument0 + 5 + _c_subimg ] , 
    l_external_sprite[@ argument0 + 6 + _c_subimg ] + argument2 ,
    l_external_sprite[@ argument0 + 7 + _c_subimg ] + argument3 ,
    argument4 ,
    argument5 ,
    argument6 ,
    argument7
);


#define draw_external_sprite_part_ext
///draw_external_sprite_part_ext(sprite,subimg,left,top,width,height,x,y,xscale,yscale,colour,alpha)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

var _subimg = l_external_sprite[@ argument0 ];
var _c_subimg = ( floor(argument1) mod _subimg ) * 3;
draw_background_part_ext(
    l_external_sprite[@ argument0 + 5 + _c_subimg ] , 
    l_external_sprite[@ argument0 + 6 + _c_subimg ] + argument2 ,
    l_external_sprite[@ argument0 + 7 + _c_subimg ] + argument3 ,
    argument4 ,
    argument5 ,
    argument6 ,
    argument7 ,
    argument8 ,
    argument9 ,
    argument10 ,
    argument11
);


#define draw_external_sprite_pos
///draw_external_sprite_pos(sprite,subimg,x1,y1,x2,y2,x3,y3,x4,y4,alpha)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

var _subimg = l_external_sprite[@ argument0 ];
var _c_subimg = ( floor(argument1) mod _subimg ) * 3;
var _bck = l_external_sprite[@ argument0 + 5 + _c_subimg ];

var _u_x = l_external_sprite[@ argument0 + 6 + _c_subimg ] / background_get_width( _bck );
var _u_y = l_external_sprite[@ argument0 + 7 + _c_subimg ] / background_get_height( _bck );
var _u_w = l_external_sprite[@ argument0 + 1 ] / background_get_width( _bck );
var _u_h = l_external_sprite[@ argument0 + 2 ] / background_get_height( _bck );


draw_set_alpha( argument10 );
draw_primitive_begin_texture( pr_trianglelist , background_get_texture( _bck ) );
    draw_vertex_texture( argument2 , argument3 , _u_x , _u_y );
    draw_vertex_texture( argument4 , argument5 , _u_x+_u_w , _u_y );
    draw_vertex_texture( argument6 , argument7 , _u_x+_u_w , _u_y+_u_h );
    
    draw_vertex_texture( argument8 , argument9 , _u_x , _u_y+_u_h );
    draw_vertex_texture( argument2 , argument3 , _u_x , _u_y );
    draw_vertex_texture( argument6 , argument7 , _u_x+_u_w , _u_y+_u_h );
draw_primitive_end();


#define draw_external_sprite_stretched
///draw_external_sprite_stretched(sprite,subimg,x,y,w,h)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

var _subimg = l_external_sprite[@ argument0 ];
var _c_subimg = ( floor(argument1) mod _subimg ) * 3;
draw_background_part_ext(
    l_external_sprite[@ argument0 + 5 + _c_subimg ] , 
    l_external_sprite[@ argument0 + 6 + _c_subimg ] ,
    l_external_sprite[@ argument0 + 7 + _c_subimg ] ,
    l_external_sprite[@ argument0 + 1 ] ,
    l_external_sprite[@ argument0 + 2 ] ,
    argument2 ,
    argument3 ,
    ( argument4 / l_external_sprite[@ argument0 + 1 ] ) ,
    ( argument5 / l_external_sprite[@ argument0 + 2 ] ) ,
    c_white ,
    1
);


#define draw_external_sprite_stretched_ext
///draw_external_sprite_stretched_ext(sprite,subimg,x,y,w,h,colour,alpha)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

var _subimg = l_external_sprite[@ argument0 ];
var _c_subimg = ( floor(argument1) mod _subimg ) * 3;
draw_background_part_ext(
    l_external_sprite[@ argument0 + 5 + _c_subimg ] , 
    l_external_sprite[@ argument0 + 6 + _c_subimg ] ,
    l_external_sprite[@ argument0 + 7 + _c_subimg ] ,
    l_external_sprite[@ argument0 + 1 ] ,
    l_external_sprite[@ argument0 + 2 ] ,
    argument2 ,
    argument3 ,
    ( argument4 / l_external_sprite[@ argument0 + 1 ] ) ,
    ( argument5 / l_external_sprite[@ argument0 + 2 ] ) ,
    argument6 ,
    argument7
);


#define draw_external_sprite_tiled
///draw_external_sprite_tiled(sprite,subimg,x,y)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

var _subimg = l_external_sprite[@ argument0 ];
var _c_subimg = ( floor(argument1) mod _subimg ) * 3;

var _w = l_external_sprite[@ argument0 + 1 ];
var _h = l_external_sprite[@ argument0 + 2 ];
var _bck  = l_external_sprite[@ argument0 + 5 + _c_subimg ];
var _left = l_external_sprite[@ argument0 + 6 + _c_subimg ];
var _top  = l_external_sprite[@ argument0 + 7 + _c_subimg ];
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


#define draw_external_sprite_tiled_ext
///draw_external_sprite_tiled_ext(sprite,subimg,x,y,xscale,yscale,colour,alpha)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

var _subimg = l_external_sprite[@ argument0 ];
var _c_subimg = ( floor(argument1) mod _subimg ) * 3;

var _w = l_external_sprite[@ argument0 + 1 ] ;
var _h = l_external_sprite[@ argument0 + 2 ];
var _bck  = l_external_sprite[@ argument0 + 5 + _c_subimg ];
var _left = l_external_sprite[@ argument0 + 6 + _c_subimg ];
var _top  = l_external_sprite[@ argument0 + 7 + _c_subimg ];
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


#define sprite_load_begin
///sprite_load_begin(tex_page_width,tex_page_height,tex_offset)
__s_tex_width  = argument0; // TEXTURE PAGE WIDTH
__s_tex_height = argument1; // TEXTURE PAGE HEIGHT
__s_tex_offset = argument2; // SPRITE OFFSET ON THE TEXTURE PAGE

// TEMPORARY SURFACE FOR DRAWING THE TEXTURE PAGE ON
__s_surf_texpage = surface_create( argument0 , argument1 );
//surface_set_target( __s_surf_texpage );

// LIST THAT WILL STORE THE UNSORTED LOADING SPRITE DATA
__s_l_background  = ds_list_create();
// LIST THAT WILL STORE THE SORTED LOADING SPRITE DATA
__s_l_back_sorted = ds_list_create();


#define sprite_load_add
///sprite_load_add(identifier,fname,subimg,xorig,yorig)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size
ds_list_add( __s_l_background , background_add( argument1 , false , false ) , argument0 , argument2 , argument3 , argument4 );


#define sprite_load_end
///sprite_load_end()

// SORT THEIR IMAGES BY THEIR SIZE
for( var n = 0; n < ds_list_size( __s_l_background ); n += 5 ){
    var _size = ( ( background_get_width( __s_l_background[| n ] ) div __s_l_background[| n + 2 ] ) + background_get_height( __s_l_background[| n ] ) ) / 2;
    if( ds_list_size( __s_l_back_sorted ) > 0 ){
        for( var i = 0; i < ds_list_size( __s_l_back_sorted ); i += 6 ){
            if( _size > __s_l_back_sorted[| i ] ){
                ds_list_insert( __s_l_back_sorted , i , __s_l_background[| n + 4 ] ); // XORIG
                ds_list_insert( __s_l_back_sorted , i , __s_l_background[| n + 3 ] ); // YORIG
                ds_list_insert( __s_l_back_sorted , i , __s_l_background[| n + 2 ] ); // SUBIMG
                ds_list_insert( __s_l_back_sorted , i , __s_l_background[| n + 1 ] ); // IDENTIFIER
                ds_list_insert( __s_l_back_sorted , i , __s_l_background[| n ] );     // ID
                ds_list_insert( __s_l_back_sorted , i , _size );
                break;
            }else if( i == ds_list_size( __s_l_back_sorted ) - 6 ){
                ds_list_add( __s_l_back_sorted , 
                    _size ,                      // SIZE
                    __s_l_background[| n ] ,     // ID
                    __s_l_background[| n + 1 ] , // IDENTIFIER
                    __s_l_background[| n + 2 ] , // SUBIMG
                    __s_l_background[| n + 3 ] , // XORIG
                    __s_l_background[| n + 4 ]   // YORIG
                );
                break;
            }
        }
    }else{
        ds_list_add( __s_l_back_sorted , 
            _size ,                      // SIZE
            __s_l_background[| n ] ,     // ID
            __s_l_background[| n + 1 ] , // IDENTIFIER
            __s_l_background[| n + 2 ] , // SUBIMG
            __s_l_background[| n + 3 ] , // XORIG
            __s_l_background[| n + 4 ]   // YORIG
        );
    }
}



// CREATE THE DATA STRUCTURES NECESSARY FOR ADDING THE SPRITES ON THE TEXTURE PAGE
temp_sprite_get = ds_map_create();

var _back = background_create_from_surface( __s_surf_texpage , 0 , 0 , surface_get_width( __s_surf_texpage ) , surface_get_height( __s_surf_texpage ) , false , false );

var _l_areas = ds_list_create();
var _l_trash = ds_list_create();
ds_list_add( _l_areas , 0 , 0 , __s_tex_width , __s_tex_height );

surface_set_target( __s_surf_texpage );
draw_clear_alpha(0,0); // this can be removed
var _bck = -1;

while( ds_list_size( __s_l_back_sorted ) > 0 ){ // LOOP THROUGH THE SPRITES AND ADD THEM TO THE TEXTURE PAGE WHERE POSSIBLE
    _bck = __s_l_back_sorted[| 1 ];
    
    var spr_number = __s_l_back_sorted[| 3 ];
    var subimg_w = background_get_width( _bck ) div spr_number;
    
    // ADD THE IDENTIFIER TO THE MAP, THE USER WILL GRAB THE SPRITE ID FROM THIS MAP
    ds_map_add( temp_sprite_get , __s_l_back_sorted[| 2 ] , array_length_1d( l_external_sprite ) );
    // ADD THE MAIN DATA OF THE SPRITE TO THE SPRITE DATA STRUCTURE
    l_external_sprite[ array_length_1d( l_external_sprite ) ] = __s_l_back_sorted[| 3 ];       // SUBIMAGE
    l_external_sprite[ array_length_1d( l_external_sprite ) ] = subimg_w;                      // SUBIMAGE WIDTH
    l_external_sprite[ array_length_1d( l_external_sprite ) ] = background_get_height( _bck ); // SUBIMAGE
    l_external_sprite[ array_length_1d( l_external_sprite ) ] = __s_l_back_sorted[| 4 ];       // XORIGIN
    l_external_sprite[ array_length_1d( l_external_sprite ) ] = __s_l_back_sorted[| 5 ];       // YORIGIN
    
    var _image_drawn = false;
    for( var i = 0; i < __s_l_back_sorted[| 3 ]; i++ ){
        var _min_area_size = 9999999;
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
            
            // ADD THE SUBIMAGE OF THE SPRITE TO THE SPRITE DATA STRUCTURE
            l_external_sprite[ array_length_1d( l_external_sprite ) ] = _back;              // BACKGROUND
            l_external_sprite[ array_length_1d( l_external_sprite ) ] = _l_areas[| n ];     // X
            l_external_sprite[ array_length_1d( l_external_sprite ) ] = _l_areas[| n + 1 ]; // Y
            
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
        }else{
            show_message( "NOT ENOUGH ROOM ON THE TEXTURE PAGE" );
        }
    }
    
    if( ds_list_size( _l_areas ) == 0 ){
        show_message( "NOT ENOUGH ROOM ON THE TEXTURE PAGE" );
        break;
    }
    repeat( 6 ){
        ds_list_delete( __s_l_back_sorted , 0 );
    }
    ds_list_add( _l_trash , _bck );
}
draw_set_blend_mode( bm_normal );
surface_reset_target();

// Clear memory
for( var n = 0; n < ds_list_size( _l_trash ); n++ ){
    background_delete( _l_trash[| n ] );
}

// CREATE THE BACKGROUND (TEXTUREPAGE)
var _back_temp = background_create_from_surface( __s_surf_texpage , 0 , 0 , surface_get_width( __s_surf_texpage ) , surface_get_height( __s_surf_texpage ) , false , false );
background_assign( _back , _back_temp );
background_delete( _back_temp );

// Clear memory
surface_free( __s_surf_texpage );
ds_list_destroy( _l_areas );
ds_list_destroy( __s_l_back_sorted );
ds_list_destroy( __s_l_background );
ds_list_destroy( _l_trash );

return( _back );


#define sprite_load_end_dynamic
///sprite_load_end_dynamic()
/*
    ! IMPORTANT !
    THIS WILL RETURN A DS_LIST WITH ALL OF THE CREATED BACKGROUNDS
    DELETE THE DS_LIST AFTER USAGE TO AVOID A MEMORY LEAK
    ! IMPORTANT !
*/
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size
// SORT THEIR IMAGES BY THEIR SIZE
for( var n = 0; n < ds_list_size( __s_l_background ); n += 5 ){
    var _size = ( ( background_get_width( __s_l_background[| n ] ) div __s_l_background[| n + 2 ] ) + background_get_height( __s_l_background[| n ] ) ) / 2;
    if( ds_list_size( __s_l_back_sorted ) > 0 ){
        for( var i = 0; i < ds_list_size( __s_l_back_sorted ); i += 6 ){
            if( _size > __s_l_back_sorted[| i ] ){
                ds_list_insert( __s_l_back_sorted , i , __s_l_background[| n + 4 ] ); // XORIG
                ds_list_insert( __s_l_back_sorted , i , __s_l_background[| n + 3 ] ); // YORIG
                ds_list_insert( __s_l_back_sorted , i , __s_l_background[| n + 2 ] ); // SUBIMG
                ds_list_insert( __s_l_back_sorted , i , __s_l_background[| n + 1 ] ); // IDENTIFIER
                ds_list_insert( __s_l_back_sorted , i , __s_l_background[| n ] );     // ID
                ds_list_insert( __s_l_back_sorted , i , _size );
                break;
            }else if( i == ds_list_size( __s_l_back_sorted ) - 6 ){
                ds_list_add( __s_l_back_sorted , 
                    _size ,                      // SIZE
                    __s_l_background[| n ] ,     // ID
                    __s_l_background[| n + 1 ] , // IDENTIFIER
                    __s_l_background[| n + 2 ] , // SUBIMG
                    __s_l_background[| n + 3 ] , // XORIG
                    __s_l_background[| n + 4 ]   // YORIG
                );
                break;
            }
        }
    }else{
        ds_list_add( __s_l_back_sorted , 
            _size ,                      // SIZE
            __s_l_background[| n ] ,     // ID
            __s_l_background[| n + 1 ] , // IDENTIFIER
            __s_l_background[| n + 2 ] , // SUBIMG
            __s_l_background[| n + 3 ] , // XORIG
            __s_l_background[| n + 4 ]   // YORIG
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
draw_clear_alpha(0,0); // this can be removed
var _bck = -1;

while( ds_list_size( __s_l_back_sorted ) > 0 ){ // LOOP THROUGH THE SPRITES AND ADD THEM TO THE TEXTURE PAGE WHERE POSSIBLE
    _bck = __s_l_back_sorted[| 1 ];
    
    var spr_number = __s_l_back_sorted[| 3 ];
    var subimg_w = background_get_width( _bck ) div spr_number;
    var _image_drawn = false;
    var _image_maindata_added = false;
    for( var i = 0; i < __s_l_back_sorted[| 3 ]; i++ ){
        var _min_area_size = 9999999;
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
                // ADD THE IDENTIFIER TO THE MAP, THE USER WILL GRAB THE SPRITE ID FROM THIS MAP
                ds_map_add( temp_sprite_get , __s_l_back_sorted[| 2 ] , array_length_1d( l_external_sprite ) );
                // ADD THE MAIN DATA OF THE SPRITE TO THE SPRITE DATA STRUCTURE
                l_external_sprite[ array_length_1d( l_external_sprite ) ] = __s_l_back_sorted[| 3 ];       // SUBIMAGE
                l_external_sprite[ array_length_1d( l_external_sprite ) ] = subimg_w;                      // SUBIMAGE WIDTH
                l_external_sprite[ array_length_1d( l_external_sprite ) ] = background_get_height( _bck ); // SUBIMAGE HEIGHT
                l_external_sprite[ array_length_1d( l_external_sprite ) ] = __s_l_back_sorted[| 4 ];       // XORIGIN
                l_external_sprite[ array_length_1d( l_external_sprite ) ] = __s_l_back_sorted[| 5 ];       // YORIGIN
                _image_maindata_added = true;
            }
            
            // ADD THE SUBIMAGE OF THE SPRITE TO THE SPRITE DATA STRUCTURE
            l_external_sprite[ array_length_1d( l_external_sprite ) ] = _back;              // BACKGROUND
            l_external_sprite[ array_length_1d( l_external_sprite ) ] = _l_areas[| n ];     // X
            l_external_sprite[ array_length_1d( l_external_sprite ) ] = _l_areas[| n + 1 ]; // Y

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
        }else{
            show_debug_message( "Warning: Not enough room on the texturepage, creating another one, this might slow down the game" );
            
            ds_list_clear( _l_areas );
            ds_list_add( _l_areas , 0 , 0 , __s_tex_width , __s_tex_height );
            
            _back = background_create_colour( __s_tex_width , __s_tex_height , c_black );
            ds_list_add( _l_texpage , surface_create( __s_tex_width , __s_tex_height ) , _back);
            surface_reset_target();
            surface_set_target( _l_texpage[| ds_list_size( _l_texpage ) - 2 ] );
            
            i--;
        }
    }
    
    if( ds_list_size( _l_areas ) == 0 ){
        show_debug_message( "Warning: Something went wrong, creating another texturepage" );
        
        ds_list_clear( _l_areas );
        ds_list_add( _l_areas , 0 , 0 , __s_tex_width , __s_tex_height );
        
        _back = background_create_colour( __s_tex_width , __s_tex_height , c_black );
        ds_list_add( _l_texpage , 
            surface_create( __s_tex_width , __s_tex_height ) , 
            _back
        );
        surface_reset_target();
        surface_set_target( _l_texpage[| ds_list_size( _l_texpage ) - 2 ] );
    }
    if( _image_drawn ){
        repeat( 6 ){
            ds_list_delete( __s_l_back_sorted , 0 );
        }
        ds_list_add( _l_trash , _bck );
    }
}
draw_set_blend_mode( bm_normal );
surface_reset_target();

// Clear memory
for( var n = 0; n < ds_list_size( _l_trash ); n++ ){
    background_delete( _l_trash[| n ] );
}
var _l_return = ds_list_create();
// CREATE THE BACKGROUND (TEXTUREPAGE)
for( var n = 0; n < ds_list_size( _l_texpage ); n += 2 ){
    var _back_temp = background_create_from_surface( _l_texpage[| n ] , 0 , 0 , surface_get_width( _l_texpage[| n ] ) , surface_get_height( _l_texpage[| n ] ) , false , false );
    background_assign( _l_texpage[| n + 1 ] , _back_temp );
    background_delete( _back_temp );
    surface_free( _l_texpage[| n ] );
    ds_list_add( _l_return , _l_texpage[| n + 1 ] );
}

// Clear memory
surface_free( __s_surf_texpage );
ds_list_destroy( _l_areas );
ds_list_destroy( __s_l_back_sorted );
ds_list_destroy( __s_l_background );
ds_list_destroy( _l_trash );
ds_list_destroy( _l_texpage );

return( _l_return );

#define sprite_load_get
///sprite_load_get(identifier)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size
var _val = temp_sprite_get[? argument0 ];
ds_map_delete( temp_sprite_get , argument0 );
// DELETE THE TEMP MAP AFTER IT HAS BEEN EMPTIED
if( ds_map_size( temp_sprite_get ) == 0 ){
    ds_map_destroy( temp_sprite_get );
}
return( _val );


#define sprite_external_get_number
///sprite_external_get_number(ind)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

return( l_external_sprite[@ argument0 ] );


#define sprite_external_get_width
///sprite_external_get_width(ind)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

return( l_external_sprite[@ argument0 + 1 ] );


#define sprite_external_get_height
///sprite_external_get_height(ind)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

return( l_external_sprite[@ argument0 + 2 ] );


#define sprite_external_get_xoffset
///sprite_external_get_xoffset(ind)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

return( l_external_sprite[@ argument0 + 3 ] );


#define sprite_external_get_yoffset
///sprite_external_get_yoffset(ind)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

return( l_external_sprite[@ argument0 + 4 ] );


#define sprite_external_get_uvs
///sprite_external_get_uvs(spr,subimg)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

var _subimg = l_external_sprite[@ argument0 ];
var _c_subimg = ( argument1 mod _subimg ) * 3;

var _bck = l_external_sprite[@ argument0 + 5 + _c_subimg ];

var _ar;
_ar[ 0 ] = l_external_sprite[@ argument0 + 6 + _c_subimg ] / background_get_width( _bck );
_ar[ 1 ] = l_external_sprite[@ argument0 + 7 + _c_subimg ] / background_get_width( _bck );
_ar[ 2 ] = (l_external_sprite[@ argument0 + 6 + _c_subimg ]+l_external_sprite[@ argument0 + 1 ]) / background_get_width( _bck );
_ar[ 3 ] = (l_external_sprite[@ argument0 + 7 + _c_subimg ]+l_external_sprite[@ argument0 + 2 ]) / background_get_width( _bck );
return( _ar );


#define sprite_external_exists
///sprite_external_exists(spr)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

return( l_external_sprite[@ argument0 ] > 0 );


#define sprite_external_set_offset
///sprite_external_set_offset(ind,xoff,yoff)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

l_external_sprite[@ argument0 + 3 ] = argument1;
l_external_sprite[@ argument0 + 4 ] = argument2;


#define sprite_external_get_texturepage
///sprite_external_get_texturepage(sprite,subimg)
gml_pragma("forceinline"); // in YYC, proccessing boost but it inflates the final exe size

var _subimg = l_external_sprite[@ argument0 ];
var _c_subimg = ( argument1 mod _subimg ) * 3;

return( l_external_sprite[@ argument0 + 5 + _c_subimg ] );


#define sprite_external_save
///sprite_external_save(ind,subimg,fname)
var _subimg = l_external_sprite[@ argument0 ];
var _c_subimg = ( argument1 mod _subimg ) * 3;

var _surf = surface_create( l_external_sprite[@ argument0 + 1 ] , l_external_sprite[@ argument0 + 2 ] );

surface_set_target( _surf );
    draw_clear_alpha( 0 , 0 );
    draw_background_part(
        l_external_sprite[@ argument0 + 5 + _c_subimg ] , 
        l_external_sprite[@ argument0 + 6 + _c_subimg ] ,
        l_external_sprite[@ argument0 + 7 + _c_subimg ] ,
        l_external_sprite[@ argument0 + 1 ] ,
        l_external_sprite[@ argument0 + 2 ] ,
        0 ,
        0
    );
surface_reset_target();
surface_save( _surf , argument2 );
surface_free( _surf );


#define sprite_external_save_strip
///sprite_external_save_strip(ind,fname)
var _subimg_count = l_external_sprite[@ argument0 ];

var _surf = surface_create( l_external_sprite[@ argument0 + 1 ] * _subimg_count , l_external_sprite[@ argument0 + 2 ] );
surface_set_target( _surf );
    draw_clear_alpha( 0 , 0 );
    for( var n = 0; n < _subimg_count; n++ ){
        draw_background_part(
            l_external_sprite[@ argument0 + 5 + n*3 ] , 
            l_external_sprite[@ argument0 + 6 + n*3 ] ,
            l_external_sprite[@ argument0 + 7 + n*3 ] ,
            l_external_sprite[@ argument0 + 1 ] ,
            l_external_sprite[@ argument0 + 2 ] ,
            l_external_sprite[@ argument0 + 1 ] * n ,
            0
        );
    }
surface_reset_target();

surface_save( _surf , argument1 );
surface_free( _surf );


#define sprite_external_init
///sprite_external_init()
globalvar l_external_sprite;
l_external_sprite[ 0 ] = 0;// = ds_list_create();