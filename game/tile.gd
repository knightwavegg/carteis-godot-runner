extends StaticBody2D



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	move_and_collide(Vector2(-1*Globals.obstacle_speed*delta, 0))


func _on_screen_exited() -> void:
	Globals.obstacle_dodged.emit()
	# await timer & free
