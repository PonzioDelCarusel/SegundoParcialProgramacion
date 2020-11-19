extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
# warning-ignore:return_value_discarded
	connect("pressed", self, "_on_button_pressed")
	if Globals.current_level == 2:
		$".".visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

var next_level_target_scene = ""

func _on_button_pressed():
	if Globals.current_level == 0:
		next_level_target_scene = "res://scenes/levels/nivel2.tscn"
	if Globals.current_level == 1:
		next_level_target_scene = "res://scenes/levels/nivel3.tscn"
	if Globals.current_level == 2:
		next_level_target_scene = "res://scenes/screens/levelSelection.tscn"
	var retryLevel = get_tree().change_scene(next_level_target_scene)
	if retryLevel != OK:
		print("Error al cargar la escena")
	pass # Replace with function body.
