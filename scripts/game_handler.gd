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
var is_second_half: bool = false
var playing_team: Array[club_data] = []
var game_starter: club_data
var not_game_starter: club_data
var game_starter_index: int
var on_possesion: club_data
var player_on_possesion : player_data
var match_feed_to_be_generated: Array[String] = []
var match_feed_generation_index: int = 0

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
@onready var match_feed_timer: Timer = $match_feed_timer

# const
const MATCH_FEED_LABEL = preload("res://scenes/match_feed_label.tscn")
const AWAY_SCOREBOARD_LABEL = preload("res://scenes/away_scoreboard_label.tscn")
const HOME_SCOREBOARD_LABEL = preload("res://scenes/home_scoreboard_label.tscn")
const TIME_SCOREBOARD_LABEL = preload("res://scenes/time_scoreboard_label.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	handle_team()
	clear_container()

func clear_container():
	for children in match_feed_label_container.get_children():
		match_feed_label_container.remove_child(children)
		children.queue_free()

func update_match_feed():
	match_feed_timer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	update_screen()
	if is_match_started and not is_match_paused:
		action_handler()
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
		if current_match_time_seconds == 60 and current_match_time_minutes < 40:
			current_match_time_seconds = 0
			current_match_time_minutes += 1

		if not is_second_half:
			if current_match_time_minutes == 20:
				var match_feed_half_time:String
				match_feed_half_time = str(current_match_time_minutes) + "' " + "It's Halftime, " + str(home_score) + " - " + str(away_score)
				match_feed_to_be_generated.append(match_feed_half_time)
				pause()
				is_second_half = true
				current_time_minute_label.text = str(current_match_time_minutes)
				current_time_second_label.text = "0" + str(current_match_time_seconds)

		if current_match_time_minutes == 40:
			second_timer.stop()
			current_time_minute_label.text = str(current_match_time_minutes)
			current_time_second_label.text = "0" + str(current_match_time_seconds)
			var match_feed_full_time : String
			match_feed_full_time = str(current_match_time_minutes) + "' " + "Match ended. " + str(home_score) + " - " + str(away_score)
			match_feed_to_be_generated.append(match_feed_full_time)
			pause_match_button.disabled = true
			is_match_started = false

	#if current_match_time_minutes == 20:
		#pause()
		#var half_time_feed = MATCH_FEED_LABEL.instantiate()
		#half_time_feed.text = str(current_match_time_minutes) + "' " + "Half time " + str(home_score) + " - " + str(away_score)

# match engine

func kick_off():
	flip_coin()
	var kick_off_taker: player_data = game_starter.field_player[randi() % game_starter.field_player.size()]
	var match_feed_kick_off: String
	match_feed_kick_off = str(current_match_time_minutes) + "' " + str(kick_off_taker.full_name) + " kicked the ball off"
	is_match_started = true
	current_match_time_minutes = 0
	current_match_time_seconds = 0
	match_feed_to_be_generated.append(match_feed_kick_off)
	second_timer.start()
	update_match_feed()

func first_action_after_kick_off():
	var match_feed_kick_off_first_action: String
	var match_feed_randomizer = randf()
	if match_feed_randomizer < 0.04:
		match_feed_kick_off_first_action = str(current_match_time_minutes) + "' " + " Mistake by " + game_starter.club_name + ", they lose the ball"
		on_possesion

func flip_coin():
	var game_starter_randomizer = randi() % playing_team.size()
	game_starter = playing_team[game_starter_randomizer]
	if game_starter_randomizer == 0:
		not_game_starter = playing_team[1]
	else:
		not_game_starter = playing_team[0]
	var match_feed_ref_is_flipping_coin: String
	var match_feed_who_start_game: String
	match_feed_ref_is_flipping_coin = str(current_match_time_minutes) + "'" + " Referee is flipping coin"
	match_feed_who_start_game = str(current_match_time_minutes) + "' " + str(game_starter.club_name) + " will start the game"
	match_feed_to_be_generated.append(match_feed_ref_is_flipping_coin)
	match_feed_to_be_generated.append(match_feed_who_start_game)
	on_possesion = game_starter

func handle_team():
	playing_team.append(home_club)
	playing_team.append(away_club)

func action_handler():
	pass

#screen updater

func update_screen():
	home_club_name_label.text = home_club.club_name
	home_club_logo.texture = home_club.club_logo
	away_club_name_label.text = away_club.club_name
	away_club_logo.texture = away_club.club_logo

func update_score():
	score_label.text = str(home_score) + " : " + str(away_score)

func pause():
	is_match_paused = true
	second_timer.paused = true
	pause_match_button.text = "Resume"

#button functions
func resume():
	is_match_paused = false
	second_timer.paused = false
	pause_match_button.text = "Pause"

func _on_start_match_button_button_up() -> void:
	kick_off()
	start_match_button.visible = false
	pause_match_button.visible = true

func _on_second_timer_timeout() -> void:
	current_match_time_seconds += 1

func _on_pause_match_button_button_up() -> void:
	if not is_match_paused:
		pause()
	else:
		resume()

func _on_exit_match_button_button_up() -> void:
	pass # Replace with function body.

#debug buttons

func _on_home_attack_debug_pressed() -> void:
	pass # Replace with function body.

func _on_away_attack_debug_pressed() -> void:
	pass # Replace with function body.

func _on_match_feed_timer_timeout() -> void:
	if match_feed_generation_index < match_feed_to_be_generated.size():
		var generate_match_feed = MATCH_FEED_LABEL.instantiate()
		generate_match_feed.text = str(match_feed_to_be_generated[match_feed_generation_index])
		match_feed_label_container.add_child(generate_match_feed)
		match_feed_generation_index += 1

func _on_action_timer_timeout() -> void:
	pass # Replace with function body.
