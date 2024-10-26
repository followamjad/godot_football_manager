extends Node2D

var attack: int = 0:
	get:
		if player_attack.size() > 0:
			var total_attack_sum = 0
			for number in player_attack:
				total_attack_sum += number
			return total_attack_sum / player_attack.size()
		return 0

var player_attack: Array[int] = [3, 3, 8, 9, 10, 8, 7]

func _ready() -> void:
	print(attack)
