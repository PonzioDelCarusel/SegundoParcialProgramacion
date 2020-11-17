extends Node


var Minuto = 0.0
var Segundo = 0.0
var Centesima = 0.0

var tiempo_level1 = 0.0
var tiempo_level2 = 0.0
var tiempo_level3 = 0.0

var history_level1 = []
var history_level2 = []
var history_level3 = []

class myClassSort:
	static func myFuncSort(a, b):
		if(b > a):
			return true
		return false
		


var CONFIG = {
	"history_1" : history_level1,
	"history_2" : history_level2,
	"history_3" : history_level3,
}

var levels = [
	"res://scenes/levels/nivel1.tscn",
	"res://scenes/levels/nivel2.tscn",
	"res://scenes/levels/nivel3.tscn"
	]

var current_level = 0
var fileName = "res://SaveScores.cfg"

# Called when the node enters the scene tree for the first time.
func _ready():
	#. Carga los datos desde un archivo
	if(Archivar_Datos()):
		if(not history_level1.empty()):
			tiempo_level1 = history_level1[ 0 ]
		if(not history_level2.empty()):
			tiempo_level2 = history_level2[ 0 ]
		if(not history_level3.empty()):
			tiempo_level3 = history_level3[ 0 ]
		
		print('history_1: ', history_level1)
		print('history_2: ', history_level2)
		print('history_3: ', history_level3)
	pass

func SaveHistory():
	var iResult = 0
	
	match(current_level):
		1:
			history_level1.append(tiempo_level1)
			history_level1.sort_custom(myClassSort,"myFuncSort")
			iResult = history_level1[ 0 ]
		2:
			history_level2.append(tiempo_level2)
			history_level2.sort_custom(myClassSort,"myFuncSort")
			iResult = history_level2[ 0 ]
		3:
			history_level3.append(tiempo_level3)
			history_level3.sort_custom(myClassSort,"myFuncSort")
			iResult = history_level3[ 0 ]
			
	return iResult


func get_StrTiempo(tiempo):
	Minuto = tiempo / 60
	Segundo = int(tiempo) % 60
	Centesima = (tiempo - int(tiempo)) * 100
	var StrTiempo = "%02d:%02d:%02d" % [Minuto, Segundo, Centesima]
	return StrTiempo




func _finalize():
	#. Guarda la Tabla de Scores
	print('Juego Finalizado')
	Archivar_Datos(true)
	
	
func Archivar_Datos(state = false):
	var ERR
	var iResult = false
	var myFile = File.new()
	
	if(state):
		ERR = myFile.open(fileName, File.WRITE)
		if(ERR != OK):
			print("Error Creando Archivo: ", fileName)
			return
			
		myFile.store_var(CONFIG)
	
	else:
		if(myFile.file_exists(fileName)):
			ERR = myFile.open(fileName, File.READ)
			if(ERR != OK):
				print('Error Leyendo Archivo: ', fileName)
				return
				
			CONFIG = myFile.get_var()
			history_level1 = CONFIG["history_1"]
			history_level2 = CONFIG["history_2"]
			history_level3 = CONFIG["history_3"]
			iResult = true
	
	myFile.close()

	return iResult
	
