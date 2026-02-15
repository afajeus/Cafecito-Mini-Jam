extends CharacterBody2D


const SPEED = 300.0


func _physics_process(_delta: float) -> void:
	var Direccion = Input.get_axis("ui_left","ui_right")
	
	if Direccion:
		velocity.x = Direccion * SPEED
	else:# mantiene el eje y sin cambios (o en el 0) O velocity.y = 0
		velocity.x =move_toward(velocity.x,0,SPEED)
	move_and_slide()
	
