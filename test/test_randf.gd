extends Node2D

func _ready() -> void:
	print(randf())

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		randomize()
		print(randf())
