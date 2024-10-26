extends Node2D

# data
@export var home_club: club_data
@export var away_club: club_data
var home_score: int = 0
var away_score: int = 0
var current_match_time_minutes: int = 0
var current_match_time_seconds: int = 0
var is_match_started: bool = false
var is_match_paused: bool = false

# onreadys
@onready var home_club_logo: TextureRect = $CanvasLayer/home_club_logo
@onready var home_club_name_label: Label = $CanvasLayer/home_club_name_label
@onready var away_club_logo: TextureRect = $CanvasLayer/away_club_logo
@onready var away_club_name_label: Label = $CanvasLayer/away_club_name_label
@onready var score_label: Label = $CanvasLayer/score_label
@onready var current_time_minute_label: Label = $CanvasLayer/current_time_container/current_time_minute_label
@onready var current_time_second_label: Label = $CanvasLayer/current_time_container/current_time_second_label
@onready var home_scoreboard_container: VBoxContainer = $CanvasLayer/scoreboard_container/HBoxContainer/home_scoreboard_container
@onready var time_scoreboard_container: VBoxContainer = $CanvasLayer/scoreboard_container/HBoxContainer/time_scoreboard_container
@onready var away_scoreboard_container: VBoxContainer = $CanvasLayer/scoreboard_container/HBoxContainer/away_scoreboard_container
@onready var match_feed_label_container: VBoxContainer = $CanvasLayer/match_feed_container/match_feed_label_container
@onready var second_timer: Timer = $second_timer
@onready var start_match_button: Button = $CanvasLayer/button_container/start_match_button
@onready var pause_match_button: Button = $CanvasLayer/button_container/pause_match_button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current_match_time_minutes = 0
	current_match_time_seconds = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if is_match_started and not is_match_paused:
		# second label handler
		if current_match_time_seconds < 10:
			current_time_second_label.text = "0" + str(current_match_time_seconds)
		else:
			current_time_second_label.text = str(current_match_time_seconds)
		
		# minute label handler
		if current_match_time_minutes < 10:
			current_time_minute_label.text = "0" + str(current_match_time_minutes)
		else:
			current_time_minute_label.text = str(current_match_time_minutes)
		
		# time adder
		if current_match_time_seconds == 60 and current_match_time_minutes < 90:
			current_match_time_seconds = 0
			current_match_time_minutes += 1
		
		if current_match_time_minutes == 90:
			second_timer.stop()

func update_screen():
	home_club_name_label.text = home_club.club_name
	home_club_logo.texture = home_club.club_logo
	away_club_name_label.text = away_club.club_name
	away_club_logo.texture = away_club.club_logo

func update_score():
	score_label.text = str(home_score) + " : " + str(away_score)

func _on_start_match_button_button_up() -> void:
	kick_off()
	start_match_button.visible = false
	pause_match_button.visible = true

func kick_off():
	is_match_started = true
	current_match_time_minutes = 0
	current_match_time_seconds = 0
	second_timer.start()

func _on_second_timer_timeout() -> void:
	current_match_time_seconds += 1


func _on_pause_match_button_button_up() -> void:
	is_match_paused = !is_match_paused
	second_timer.paused = !second_timer.paused


func _on_exit_match_button_button_up() -> void:
	pass # Replace with function body.
