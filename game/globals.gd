extends Node


signal player_died
signal obstacle_dodged


const OBSTACLE_START_SPEED := 500.0
const OBSTACLE_START_RANGE := Vector2(40, 180)

var obstacle_speed_multiplier := 1.05
var obstacle_range_delta := Vector2(2, 6)

var obstacle_speed := OBSTACLE_START_SPEED
var ob
var obstacle_range := OBSTACLE_START_RANGE
var level := 0
var score := 0


func _ready():
	obstacle_dodged.connect(_on_obstacle_dodged)


func _on_obstacle_dodged():
	score += 100
	if score / 500 > level:
		level_up()


func level_up():
	level += 1
	obstacle_speed *= obstacle_speed_multiplier
	if level < 20:
		obstacle_range -= obstacle_range_delta


func reset():
	score = 0
	level = 0
	obstacle_speed = OBSTACLE_START_SPEED
	obstacle_range = OBSTACLE_START_RANGE
