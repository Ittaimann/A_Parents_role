extends Label

var dict = {"testing": {"lol":"nani"}}
# class member variables go here, for example:
# var a = 2
# var b = "textvar"
func _ready():
	var file = File.new()
	file.open("res://generated.json", file.READ)
	var text = JSON.parse(file.get_as_text())
	print (text.result)
	file.close()
# print something from the dictionnary for testing.
