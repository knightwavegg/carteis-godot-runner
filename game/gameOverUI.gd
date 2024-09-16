extends VBoxContainer


@onready var score_display:Label = get_node("ScoreContainer/Score")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_visibility_changed():
	if visible:
		score_display.text = str(Globals.score)
