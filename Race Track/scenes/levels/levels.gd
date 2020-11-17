extends Node2D

export (PackedScene) var car

func _ready():
	var carPlayer = car.instance()
	add_child(carPlayer)
	carPlayer.global_position = get_tree().get_nodes_in_group("SpawnPoint")[0].global_position
	pass 



func _on_metaFinalizada():
	var tiempo = Globals.SaveHistory()
	
	var newScene = load("res://scenes/screens/levelClear.tscn").instance()
	var oldScene = get_tree().get_current_scene()
	get_tree().get_root().add_child(newScene)
	get_tree().set_current_scene(newScene)
	
	newScene.Set_UltimoTiempo(tiempo)
	
	oldScene.queue_free()
	pass # Replace with function body.
