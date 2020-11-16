extends StaticBody2D

signal metaFinalizada

func _ready():
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	body.is_in_group("player")
	emit_signal("metaFinalizada")
	
	pass # Replace with function body.
