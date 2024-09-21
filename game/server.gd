extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Cartesi.server.advance_state_request_received.connect(_on_advance_received)


func _on_advance_received(payload:String):
	# Decode payload
	# Instantiate game scene
	# Configure replay parameters
	# Start game
