extends Node2D

func _ready():
	pass # Replace with function body.

func Set_UltimoTiempo(value):
	$Label.set_text( Globals.get_StrTiempo(value))
