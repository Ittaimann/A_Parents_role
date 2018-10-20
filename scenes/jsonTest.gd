extends Node

var dict = {} 
var days = 1 

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
	print(Input.is_action_just_pressed(("ui_up")))
	if(Input.is_action_just_pressed("ui_up")):
		$text.set_text(dict[str(days)][0])
		days+=1
# print something from the dictionnary for testing.
