extends Actor



# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
func _ready() -> void:
	velocity.x = -speed.x
	

func _physics_process(delta) -> void:
	velocity.y += gravity * delta 
	if is_on_wall():
		velocity  *= -1.0
	 
		
	velocity.y = move_and_slide(velocity, Vector2.UP).y
		
	
