extends Node2D
export(Array, String, FILE, "*.tscn") var target_scene = null


func _ready():

	$level1/Label.set_text( Globals.get_StrTiempo(Globals.tiempo_level1 ))
	$level2/Label.set_text( Globals.get_StrTiempo(Globals.tiempo_level2 ))
	$level3/Label.set_text( Globals.get_StrTiempo(Globals.tiempo_level3 ))
	
	pass # Replace with function body.

func _on_button_pressed(index_button):
	var newScene = load(target_scene[index_button]).instance()
	if(newScene == null):
		print("Error Leyendo Scene", target_scene[index_button])
	
	var oldScene = get_tree().get_current_scene()
	get_tree().get_root().add_child(newScene)
	get_tree().set_current_scene(newScene)
	
	oldScene.queue_free()


	if (index_button == 0):
		Globals.current_level = 0
	if (index_button == 1):
		Globals.current_level = 1
	if (index_button == 2):
		Globals.current_level = 2
	pass # Replace with function body.



func _on_menu_pressed():
	var newScene = load(target_scene[0]).instance()
	if(newScene == null):
		print("Error Leyendo Scene: ", target_scene[0])
		
	var oldScene = get_tree().get_current_scene()
	get_tree().get_root().add_child(newScene)
	get_tree().set_current_scene(newScene)
	
	oldScene.queue_free()

	pass # Replace with function body.

