extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_salir_pressed():
# warning-ignore:void_assignment
	var salirErr = get_tree().quit()
	if salirErr != OK:
		print("Error al cargar la escena")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
