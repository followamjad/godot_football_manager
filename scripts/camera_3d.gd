extends Camera3D

var rotation_speed: float = 1.0

func _process(delta: float) -> void:
	if Engine.is_editor_hint():
		return
	
	rotate_y(deg_to_rad(rotation_speed * delta))
