extends Area2D

func _ready():
	pass 


func _on_CheckPoint_body_entered(body):
	if(body.is_in_group("player")):
		print("player entered")
		Globals.bandera = self
		
	
	
	
	pass # Replace with function body.
