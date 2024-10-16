shader_type canvas_item;

uniform sampler2D gradient_texture;

uniform float offset: hint_range(0.0, 1.0, 0.01) = 0.0;

 void fragment()
{
	COLOR.r = UV.x;
	COLOR.g = UV.y;
	
	vec4 gradient_color = texture(gradient_texture, UV);
	COLOR.rgb = gradient_color.rgb;
	
	float original_alpha = texture(TEXTURE, UV).a;
	COLOR.a = original_alpha * (UV.y - offset);
}