extends Button

func _ready():
	pass 

func _on_salir_pressed():
	get_tree().quit()
	pass

func _exit_tree():
	Globals._finalize()
