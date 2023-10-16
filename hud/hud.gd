extends Control

@onready var level_label = $MarginContainer/VBoxContainer/HBoxContainer/LevelLabel
@onready var moves_label = $MarginContainer/VBoxContainer/HBoxContainer2/MovesLabel
@onready var best_label = $MarginContainer/VBoxContainer/HBoxContainer3/BestLabel


func _ready():
	pass # Replace with function body.


func _process(delta):
	pass


func set_moves_label(moves: int) -> void:
	moves_label.text = str(moves)


func set_best_label(best: int) -> void:
	best_label.text = str(best)


func set_level_label(level: String) -> void:
	level_label.text = level


func new_game(level: String) -> void:
	set_best_label(ScoreSync.get_level_best_score(level))
	set_moves_label(0)
	set_level_label(level)
	show()
