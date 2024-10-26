extends Node2D

var words: Array[String] = [
	"Hello", "What", "New", "Bye", "Cmon", "Nope", "Toppers", "Moon", "Soon", "Bright",
	"Sound", "Jazz", "Flow", "Dream", "Quick", "Time", "Star", "Glow", "Hope", "Sky",
	"Leaf", "Chill", "Whale", "Ocean", "Rock", "Storm", "Wind", "Fire", "Dawn", "Night",
	"Bird", "Lion", "Shade", "Glow", "Shine", "Soft", "Fade", "Jump", "Run", "Walk",
	"Space", "Planet", "Light", "Power", "Grace", "Tree", "Air", "Earth", "Water", "Cloud",
	"Stone", "Bright", "Calm", "Peak", "Valley", "River", "Snow", "Ice", "Flame", "Heat",
	"Cool", "Breeze", "Swift", "Wild", "Calm", "Rise", "Fall", "Thunder", "Echo", "Splash",
	"Stream", "Sound", "Tune", "Voice", "Song", "Word", "Peace", "Storm", "Roar", "Shout",
	"Whisper", "Truth", "Light", "Grace", "Frost", "Spark", "Wave", "Surf", "Wind", "Spin",
	"Bounce", "Crash", "Climb", "Fly", "Soar", "Sail", "Glow", "Burn", "Shimmer", "Blink"
]
var current_index: int = 0
var to_be_shown: Array[String] = []
@onready var word_timer: Timer = $word_timer
@onready var v_box_container: VBoxContainer = $VBoxContainer
@onready var add_child_timer: Timer = $add_child_timer
const TIMING_TEST_LABEL = preload("res://test/timing_test_label.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	word_timer.start()
	add_child_timer.start()

func _on_word_timer_timeout() -> void:
	var random_words: String = words[randi() % words.size()]
	to_be_shown.append(random_words)
	word_timer.wait_time += 0.3

func _on_add_child_timer_timeout() -> void:
	if current_index < to_be_shown.size():
		var word_to_show = TIMING_TEST_LABEL.instantiate()
		word_to_show.text = str(to_be_shown[current_index])
		v_box_container.add_child(word_to_show)
		current_index += 1
