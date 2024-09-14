extends Node2D

var obstacle = preload("res://obstacle.tscn")

var frames_till_spawn = 30

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if frames_till_spawn == 0:
		spawn()
		frames_till_spawn = randi_range(Globals.obstacle_range.x, Globals.obstacle_range.y)
	else:
		frames_till_spawn-=1


func spawn():
	var new_obstacle = obstacle.instantiate()
	add_child.call_deferred(new_obstacle)
