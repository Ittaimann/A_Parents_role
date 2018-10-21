extends Label

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	self.text = "$" + str(global.money)
	pass

func _process(delta):
	self.text = "$" + str(global.money)
