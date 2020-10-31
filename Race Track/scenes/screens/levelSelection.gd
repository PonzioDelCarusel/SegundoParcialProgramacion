extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("pressed", self, "_on_button_pressed")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

export(String) var target_scene = ""

func _on_button_pressed():
	var salirErr = get_tree().change_scene(target_scene)
	if salirErr != OK:
		print("Error al cargar la escena")
	pass # Replace with function body.
