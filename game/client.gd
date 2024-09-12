extends Control

@onready var score_label:Label = get_node("HBoxContainer/Score")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	score_label.text = str(Globals.score)
