attribute vec3 in_Position;
attribute vec4 in_Colour; // You need a color attribute in your shader for HTML5 to work (even though you don't use it). (GM EA v1.99.182)
attribute vec2 in_TextureCoord;

varying vec2 v_vTexcoord;

void main() {
    vec4 object_space_pos = vec4(in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vTexcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;

uniform sampler2D sf_selection;
uniform vec4 selection_color_background;
uniform vec4 selection_color_text;
uniform float alpha;

void main() {
    gl_FragColor = texture2D(gm_BaseTexture, v_vTexcoord);
    if (texture2D(sf_selection, v_vTexcoord).r > 0.0) {
        gl_FragColor = vec4(
            mix(selection_color_background.rgb, selection_color_text.rgb, selection_color_text.a * gl_FragColor.a),
            mix(selection_color_background.a, selection_color_text.a, gl_FragColor.a) * alpha
        );
    }
}
