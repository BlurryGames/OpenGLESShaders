shader_type canvas_item;

uniform vec3 custom_color: source_color = vec3(0.5);

uniform float custom_alpha: hint_range(0.0, 1.0, 0.01) = 1.0;

void fragment()
{
	vec3 color = vec3(0.5, 0.3, 0.9);
	float alpha = 0.1;
	int test = 1;
	
	COLOR.rgb = color;
	COLOR.a = custom_alpha;
	COLOR.rgb = custom_color;
}