extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
# warning-ignore:return_value_discarded
	connect("pressed", self, "_on_button_pressed")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

export(String) var target_scene = ""

func _on_button_pressed():
	var selectLevel = get_tree().change_scene(target_scene)
	if selectLevel != OK:
		print("Error al cargar la escena")
	if is_in_group("level1button"):
		Globals.current_level = 0
	if is_in_group("level2button"):
		Globals.current_level = 1
	if is_in_group("level3button"):
		Globals.current_level = 2
	pass # Replace with function body.
