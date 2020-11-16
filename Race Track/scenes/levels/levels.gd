extends Node2D

export (PackedScene) var car

func _ready():
	var carPlayer = car.instance()
	add_child(carPlayer)
	carPlayer.global_position = get_tree().get_nodes_in_group("SpawnPoint")[0].global_position
	pass 



func _on_metaFinalizada():
	var newScene = load("res://scenes/screens/levelSelection.tscn").instance()
	var oldScene = get_tree().get_current_scene()
	get_tree().get_root().add_child(newScene)
	get_tree().set_current_scene(newScene)
	
	oldScene.queue_free()
	pass # Replace with function body.
