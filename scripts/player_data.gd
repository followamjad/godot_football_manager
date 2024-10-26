extends Resource
class_name player_data

@export_category("Basic Info")
@export var first_name: String
@export var last_name: String
@export var full_name: String:
	get:
		return first_name + " " + last_name
@export var age: int
@export var height: int
@export var position: String

@export_category("Attacking Attributes")
@export var attack: int
@export var agility: int
@export var shooting: int

@export_category("Midfielding Attributes")
@export var passing: int
@export var speed: int
@export var ball_control: int

@export_category("Defending Attributes")
@export var defend: int
@export var interception: int

@export_category("Goalkeeping Attributes")
@export var goalkeeping: int
