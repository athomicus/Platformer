extends Actor

# if class extends Another class godot will run _physics_process
# and  additionally will run code from Actor _physics_proceess() 
# parent will be first ( Actor )
 

func _physics_process(delta: float) -> void:
	var is_jump_interrupted: = Input.is_action_just_released("move_up") and velocity.y < 0.0
	var direction: = get_direction()
	#velocity = speed * direction
	velocity.x = speed.x * direction.x
	velocity.y += gravity * get_physics_process_delta_time()  
	if direction.y == -1:
		velocity.y = speed.y * direction.y
	if is_jump_interrupted:
		velocity.y = 0.0
	velocity = move_and_slide(velocity, Vector2.UP)
	

func get_direction() -> Vector2:
	return Vector2(
			Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
			-1.0 if Input.is_action_just_pressed("move_up")  and is_on_floor() else 1.0
	)
	
	#Input.get_action_strength("move_right") = 1
	#Input.get_action_strength("move_left") = -1
	#if any keys then #Input.get_action_strength() =  0 
