extends CanvasLayer

export var Level_Activo = 1

var tiempo = 0.0

func _ready():
	pass

func _process(delta):
	tiempo += delta

	var StrTiempo = Globals.get_StrTiempo(tiempo)
	$labTiempo.set_text( StrTiempo )
	
	match(Level_Activo):
		1:
			Globals.tiempo_level1 = tiempo
		2:
			Globals.tiempo_level2 = tiempo
		3:
			Globals.tiempo_level3 = tiempo
	pass
	


