extends Node2D

export (PackedScene) var car

func _ready():
	var carPlayer = car.instance()
	add_child(carPlayer)
	carPlayer.global_position = get_tree().get_nodes_in_group("SpawnPoint")[0].global_position

	
	pass 

func _input(event):
	if(event.is_pressed()):
		if(Input.is_key_pressed(KEY_M)):
			Globals.myPlayer.queue_free()
			ReSpawn()
			
			




func _on_metaFinalizada(idLevel):
	Globals.current_level = idLevel
	
	var tiempo = Globals.SaveHistory()
	
	var newScene = load("res://scenes/screens/levelClear.tscn").instance()
	var oldScene = get_tree().get_current_scene()
	get_tree().get_root().add_child(newScene)
	get_tree().set_current_scene(newScene)
	
	newScene.Set_UltimoTiempo(tiempo)
	oldScene.queue_free()
	pass

func ReSpawn():
	var carPlayer = car.instance()
	add_child(carPlayer)
	carPlayer.global_position = Globals.bandera.global_position
	pass
	



# warning-ignore:unused_argument
func _on_Death_body_entered(body):
	Globals.myPlayer.queue_free()
	ReSpawn()
	pass # Replace with function body.


# warning-ignore:unused_argument
func _on_Death3_body_entered(body):
	pass # Replace with function body.
