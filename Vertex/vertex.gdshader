shader_type canvas_item;

uniform float offset_x = 0.0f;
uniform float stretch_y = 1.0f;

uniform float center_distance: hint_range(20.0f, 100.0f, 0.1f) = 50.0f;

void vertex()
{
	VERTEX += vec2(offset_x, 0.0f);
	VERTEX.y *= stretch_y * sin(TIME);
	VERTEX.y += VERTEX.x * sin(TIME);
	VERTEX.x += sin(TIME) * center_distance;
	VERTEX.y += cos(TIME) * center_distance;
}