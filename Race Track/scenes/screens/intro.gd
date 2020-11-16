extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_AnimationPlayer_animation_finished(_LogoAnim):
	var err = get_tree().change_scene("res://scenes/screens/menu.tscn")
	if err != OK:
		print("Error al cargar la escena")
	pass # Replace with function body.
