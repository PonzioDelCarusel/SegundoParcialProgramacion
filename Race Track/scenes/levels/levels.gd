extends Node2D

export (PackedScene) var car

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var carPlayer = car.instance()
	add_child(carPlayer)
	carPlayer.global_position = get_tree().get_nodes_in_group("SpawnPoint")[0].global_position
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
