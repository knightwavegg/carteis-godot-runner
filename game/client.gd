extends Control

@onready var game_hud:CanvasLayer = get_node("gameHUD")
@onready var home_ui:CanvasLayer = get_node("home")
@onready var game_over_ui:CanvasLayer = get_node("gameOver")
var game_scene:PackedScene = preload("res://game.tscn")
var game:Node = null

func _ready():
	game_hud.visible = false
	game_over_ui.visible = false
	Globals.player_died.connect(_on_player_died)


func _on_play_pressed():
	home_ui.visible = false
	start_game()


func _on_restart_pressed():
	game_over_ui.visible = false
	start_game()


func _on_submit_pressed():
	pass # Replace with function body.


func _on_home_pressed():
	game_over_ui.visible = false
	home_ui.visible = true


func _on_player_died():
	game.queue_free()
	game_over_ui.visible = true
	game_hud.visible = false
	

func start_game():
	game_hud.visible = true
	game = game_scene.instantiate()
	add_child(game)
