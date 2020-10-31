//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;   // 

// wave horizontal
const float var_shd_speed = 0.003;
const float var_shd_Xfrequency = 10.0;
const float var_shd_Xsize = 0.01;

void main()
{
	
	// horizontal wave            [     1 to -1      ]                            [ position     ]
	float Horizontal_Wave   = sin(time * var_shd_speed + v_vTexcoord.y * var_shd_Xfrequency) * (var_shd_Xsize * v_vTexcoord.x) ;  
	
	
	vec4 distort = v_vColour * texture2D( gm_BaseTexture, vec2( v_vTexcoord.x + Horizontal_Wave , v_vTexcoord.y ) );
	
    gl_FragColor = distort;
	
	

}
