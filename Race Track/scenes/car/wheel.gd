extends RigidBody2D


func _physics_process(delta):
	_update_accel(_get_direction(), delta)
	
func _update_accel(direction, delta):
	var accel = direction * Globals.BASE_ACCEL
	applied_torque = accel * delta
	pass
	
	
func _get_direction():
	var direction = 0
	if Input.is_action_pressed("move_left"):
	#if Input.is_key_pressed(KEY_Z):
		direction -=1
	if Input.is_action_pressed("move_right"):
	#if Input.is_key_pressed(KEY_X):
		direction +=1
	return direction
