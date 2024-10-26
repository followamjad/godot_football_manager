extends Resource
class_name club_data

@export_category("Basic Info")
@export var club_name: String
@export var manager_name: String
@export var club_short_name: String
@export var club_logo : Texture2D

@export_category("Match Info")
@export var attack_power: int = 0:
	get:
		var attackers_attack_power_array: Array[int] = []
		var midfielders_attack_power_array: Array[int] = []
		var defenders_attack_power_array: Array[int] = []
		var attackers_attack_power: int
		var midfielders_attack_power: int
		var defenders_attack_power: int
		# calculate power each position
		for attacker in attackers:
			attackers_attack_power_array.append(attacker.attack)
		for midfielder in midfielders:
			midfielders_attack_power_array.append(midfielder.attack)
		for defender in defenders:
			defenders_attack_power_array.append(defender.attack)
		
		# calculate the average of each position
		for number in attackers_attack_power_array:
			attackers_attack_power += number
		for number in midfielders_attack_power_array:
			midfielders_attack_power += number
		for number in defenders_attack_power_array:
			defenders_attack_power += number
		
	# calculate everything
		return (0.6 * (attackers_attack_power / attackers_attack_power_array.size())) + (0.3 * (midfielders_attack_power / midfielders_attack_power_array.size())) + (0.1 * (defenders_attack_power / defenders_attack_power_array.size()))

@export var defend_power: int:
	get:
		var attackers_defend_power_array: Array[int] = []
		var midfielders_defend_power_array: Array[int] = []
		var defenders_defend_power_array: Array[int] = []
		var attackers_defend_power: int
		var midfielders_defend_power: int
		var defenders_defend_power: int
		# calculate power each position
		for attacker in attackers:
			attackers_defend_power_array.append(attacker.defend)
		for midfielder in midfielders:
			midfielders_defend_power_array.append(midfielder.defend)
		for defender in defenders:
			defenders_defend_power_array.append(defender.defend)
		
		# calculate the average of each position
		for number in attackers_defend_power_array:
			attackers_defend_power += number
		for number in midfielders_defend_power_array:
			midfielders_defend_power += number
		for number in defenders_defend_power_array:
			defenders_defend_power += number
		
	# calculate everything
		return (0.1 * (attackers_defend_power / attackers_defend_power_array.size())) + (0.3 * (midfielders_defend_power / midfielders_defend_power_array.size())) + (0.6 * (defenders_defend_power / defenders_defend_power_array.size()))

@export var passing_power: int:
	get:
		var attackers_passing_power_array: Array[int] = []
		var midfielders_passing_power_array: Array[int] = []
		var defenders_passing_power_array: Array[int] = []
		var attackers_passing_power: int
		var midfielders_passing_power: int
		var defenders_passing_power: int
		# calculate power each position
		for attacker in attackers:
			attackers_passing_power_array.append(attacker.passing)
		for midfielder in midfielders:
			midfielders_passing_power_array.append(midfielder.passing)
		for defender in defenders:
			defenders_passing_power_array.append(defender.passing)
		
		# calculate the average of each position
		for number in attackers_passing_power_array:
			attackers_passing_power += number
		for number in midfielders_passing_power_array:
			midfielders_passing_power += number
		for number in defenders_passing_power_array:
			defenders_passing_power += number
		
	# calculate everything
		return (0.3 * (attackers_passing_power / attackers_passing_power_array.size())) + (0.4 * (midfielders_passing_power / midfielders_passing_power_array.size())) + (0.3 * (defenders_passing_power / defenders_passing_power_array.size()))

@export_category("Players")
@export var goalkeepers: Array[player_data]
@export var defenders: Array[player_data]
@export var midfielders: Array[player_data]
@export var attackers: Array[player_data]
