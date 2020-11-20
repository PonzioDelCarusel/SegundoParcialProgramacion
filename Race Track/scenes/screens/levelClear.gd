extends Node2D

func _ready():
	pass # Replace with function body.

func Set_UltimoTiempo(value):
	#$Label.set_text( Globals.get_StrTiempo(value))
	if Globals.current_level == 0:
		$Label.set_text( Globals.get_StrTiempo(Globals.tiempo_level1 ))
	if Globals.current_level == 1:
		$Label.set_text( Globals.get_StrTiempo(Globals.tiempo_level2 ))
	if Globals.current_level == 2:
		$Label.set_text( Globals.get_StrTiempo(Globals.tiempo_level3 ))

