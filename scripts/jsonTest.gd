extends Node

var dict = {} 
var days = 1 
onready var my_node = get_node("NinePatchRect/text")
# class member variables go here, for example:
# var a = 2
# var b = "textvar"
func _ready():
	var file = File.new()
	file.open("res://jsontext.json", file.READ)
	var text = JSON.parse(file.get_as_text())
	file.close()
	dict = (text.result)

func _process(delta):
	pass
	#if(Input.is_action_just_pressed("ui_up")):
#		my_node.set_text(dict[str(days)][0])
	#	if(my_node.is_clipping_text()):
#			print(my_node.get_text())
#		days+=1
# print something from the dictionnary for testing.


func _on_Daughter_talked():
	my_node.set_text(dict[str(days)][1])

