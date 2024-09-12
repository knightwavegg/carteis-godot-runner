extends Control

var is_server = OS.get_environment("SERVER_MODE")
var client = preload("res://client.tscn")
var server = preload("res://server.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if is_server:
		var node = server.instantiate()
		add_child(node)
	else:
		var node = client.instantiate()
		add_child(node)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
