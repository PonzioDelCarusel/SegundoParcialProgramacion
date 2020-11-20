extends Area2D

func _on_CheckPoint_body_entered(body):
	if(body.is_in_group("player")):
		print("player died")
	pass

func _on_Death_body_entered(body):
	pass
