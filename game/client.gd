extends Control

@onready var game_hud:CanvasLayer = get_node("gameHUD")
@onready var home_ui:CanvasLayer = get_node("home")
@onready var game_over_ui:CanvasLayer = get_node("gameOver")

func _ready():
	game_hud.visible = false
	game_over_ui.visible = false


func _on_play_pressed():
	game_hud.visible = true
	home_ui.visible = false


func _on_restart_pressed():
	game_hud.visible = true
	game_over_ui.visible = false


func _on_submit_pressed():
	pass # Replace with function body.


func _on_home_pressed():
	game_over_ui.visible = false
	home_ui.visible = true
