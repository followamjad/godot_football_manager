extends Node2D

var array: Array = [1, 2]

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		var randomizer = randi() % array.size()
		print(randomizer)
		print(" array size " + str(array.size()))
