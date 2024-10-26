extends Node2D


var time_minute: int = 00
var time_second: int = 00
@onready var time_minute_label: Label = $CanvasLayer/HBoxContainer/time_minute_label
@onready var time_second_label: Label = $CanvasLayer/HBoxContainer/time_second_label
@onready var second_timer: Timer = $second_timer


func _ready() -> void:
	second_timer.start()
	time_second = 0
	time_minute = 89

func _process(delta: float) -> void:
	if time_second < 10:
		time_second_label.text = "0" +  str(time_second)
	else:
		time_second_label.text = str(time_second)
	if time_minute < 10:
		time_minute_label.text = "0" + str(time_minute) 
	else:
		time_minute_label.text = str(time_minute)
	if time_second == 60 and time_minute < 90:
		time_second = 0
		time_minute += 1
	elif time_minute == 90:
		second_timer.stop()


func _on_second_timer_timeout() -> void:
	time_second += 1
