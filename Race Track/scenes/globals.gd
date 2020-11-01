extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var level1 = load("res://scenes/levels/nivel1.tscn").instance()
var level2 = load("res://scenes/levels/nivel2.tscn").instance()
var level3 = load("res://scenes/levels/nivel3.tscn").instance()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
