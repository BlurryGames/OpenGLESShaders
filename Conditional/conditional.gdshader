shader_type canvas_item;

uniform float progress: hint_range(0.0f, 1.0f, 0.01f) = 0.5f;

void fragment()
{
	if (UV.x >= 0.5f)
	{
		COLOR.a = 1.0f;
	}
	else
	{
		COLOR.a = 0.0f;
	}
	
	COLOR.a = UV.x >= 0.5f ? 1.0f : 0.0f;
	
	COLOR.a = step(progress, UV.x);
}