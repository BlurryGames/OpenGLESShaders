shader_type canvas_item;

uniform vec3 color: source_color = vec3(1.0f);

uniform vec2 center = vec2(0.5f);

uniform float radius: hint_range(0.0f, 1.0f, 0.01f) = 0.5f;
uniform float width: hint_range(0.0f, 0.3f, 0.01f) = 0.1f;

void fragment()
{
	float alpha = step(distance(center, UV), radius);
	float alpha_inner = step(distance(center, UV), radius - width);
	
	COLOR.a = alpha - alpha_inner;
	COLOR.rgb = color;
}