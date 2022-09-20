extends KinematicBody2D
class_name Actor
export var speed: = Vector2(300,1000) 
export var gravity: = 3000.0
var velocity: = Vector2.ZERO 		#Vector2(300,0)

#Actor ma grawitacje
#func _physics_process(delta) -> void:
	#velocity.y += gravity * delta
	
	#if (Input.is_action_pressed("Escape")):
	#	get_tree().quit()
	#velocity.y = max(velocity.y,speed.y)
	
