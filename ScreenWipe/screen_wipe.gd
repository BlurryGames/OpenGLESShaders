class_name ScreenWipe extends Node

@onready var shader_material: ShaderMaterial = $ColorRect.material

func _ready() -> void:
	if shader_material:
		shader_material.set_shader_parameter(&"progress", 0.5)
	
	var tween: Tween = create_tween()
	tween.tween_property(shader_material, ^"shader_parameter/progress", 1.0, 1.0).set_trans(Tween.TRANS_EXPO)
	tween.tween_property(shader_material, ^"shader_parameter/progress", 0.0, 1.0).set_trans(Tween.TRANS_EXPO)
