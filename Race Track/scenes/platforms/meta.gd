extends StaticBody2D

signal metaFinalizada
export var idNivel = 0

func _ready():
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	body.is_in_group("player")
	emit_signal("metaFinalizada", idNivel)
	
	pass # Replace with function body.
