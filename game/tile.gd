extends StaticBody2D
class_name Obstacle


func _physics_process(delta):
	global_position.x -= Globals.obstacle_speed*delta


func _on_screen_exited() -> void:
	Globals.obstacle_dodged.emit()
	await get_tree().create_timer(2.0).timeout
	queue_free()
