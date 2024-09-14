extends CharacterBody2D

const JUMP_VELOCITY = -800.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var collided = move_and_slide()
	if collided:
		for i in get_slide_collision_count():
			var collision := get_slide_collision(i)
			if collision.get_collider().is_in_group("obstacles"):
				die()


func die():
	Globals.player_died.emit()
	
