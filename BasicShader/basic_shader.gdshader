shader_type canvas_item;

uniform vec3 custom_color: source_color = vec3(0.5f);

uniform float custom_alpha: hint_range(0.0f, 1.0f, 0.01f) = 1.0f;

void fragment()
{
	vec3 color = vec3(0.5f, 0.3f, 0.9f);
	float alpha = 0.1f;
	int test = 1;
	
	COLOR.rgb = color;
	COLOR.a = custom_alpha;
	COLOR.rgb = custom_color;
}