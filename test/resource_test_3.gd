extends Node2D

var number: Array[int] = [1, 2, 3, 4]
var names: Array[String] = ["Amjad", "Chigga", "Doni"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	generate_people(20)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func generate_people(count: int):
	for i in range(count):
		var person = People.new()
		person.name = names[randi() % names.size()]
		person.age = randi_range(2, 99)
		person.height = randi_range(100, 190)  # Random height between 100 and 190 cm
		person.weight = randi_range(50, 200)  # Random weight between 50 and 200 kg
		ResourceSaver.save(person, "res://test/database/people/" + str(person.name) + str(i) + ".tres")
