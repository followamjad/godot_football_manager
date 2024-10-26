extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(sum(3))


func sum(numbers:int ) -> int:
	var total = 0
	for number in numbers:
		total += number
	return total
