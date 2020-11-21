extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Turbo_body_entered(body):
	if(body.is_in_group("player")):
		print("turbo entered")
		Globals.BASE_ACCEL = Globals.BASE_ACCEL * 2
		$turboImg.visible = false
		print(Globals.BASE_ACCEL)
		yield(get_tree().create_timer(2.0), "timeout")
		Globals.BASE_ACCEL = 1200000
		print(Globals.BASE_ACCEL)
		queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
