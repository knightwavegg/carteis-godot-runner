extends Node


const OBSTACLE_START_SPEED := 500.0

var obstacle_speed := OBSTACLE_START_SPEED
var obstacle_range := Vector2(40, 180)
var level := 0
var score := 0

func _ready():
	obstacle_dodged.connect(_on_obstacle_dodged)

func _on_obstacle_dodged():
	score += 100


func _on_level_up():
	level += 1
	# Increase current obstacle speed
	# Decrease obstacle range

signal player_died
signal obstacle_dodged
signal level_up
