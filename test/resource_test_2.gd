extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var person_1 = People.new()
	person_1.name = "Amjad"
	person_1.age = 25
	person_1.height = 171
	person_1.weight = 130
	ResourceSaver.save(person_1, "res://test/database/people/person_1.tres")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
