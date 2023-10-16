extends Control

@onready var record_label = $MC/NP/MC/VB/RecordLabel
@onready var moves_label = $MC/NP/MC/VB/MovesLabel


func _ready():
	pass # Replace with function body.


func _process(delta):
	pass


func new_game() -> void:
	hide()
	record_label.hide()


func game_over(level: String, moves: int) -> void:
	moves_label.text = str(moves, " Moves Taken")
	show()
	if ScoreSync.score_is_new_best(level, moves):
		record_label.show()
