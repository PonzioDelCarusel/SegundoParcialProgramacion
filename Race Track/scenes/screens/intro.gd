extends Node2D

func _ready():
	pass 




func _on_AnimationPlayer_animation_finished(_LogoAnim):
	var err = get_tree().change_scene("res://scenes/screens/menu.tscn")
	if err != OK:
		print("Error al cargar la escena")
	pass # Replace with function body.
