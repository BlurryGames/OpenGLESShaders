shader_type canvas_item;

uniform float progress: hint_range(0.0f, 1.0f, 0.01f) = 0.0f;

void fragment()
{
	COLOR.a = 1.0f - step(progress, UV.x);
}