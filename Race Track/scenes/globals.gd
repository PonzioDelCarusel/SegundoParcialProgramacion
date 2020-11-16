extends Node


var tiempo_level1 = 0.0
var tiempo_level2 = 0.0
var tiempo_level3 = 0.0


var levels = [
	"res://scenes/levels/nivel1.tscn",
	"res://scenes/levels/nivel2.tscn",
	"res://scenes/levels/nivel3.tscn"
	]
var current_level = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var Minuto = 0.0
var Segundo = 0.0
var Centesima = 0.0

func get_StrTiempo(tiempo):
	Minuto = tiempo / 60
	Segundo = int(tiempo) % 60
	Centesima = (tiempo - int(tiempo)) * 100
	var StrTiempo = "%02d:%02d:%02d" % [Minuto, Segundo, Centesima]
	return StrTiempo	
