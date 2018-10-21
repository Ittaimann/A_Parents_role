extends Sprite


var titlescreen_1 = preload("res://Sprites/titlescreen_1.png")
var titlescreen_2 = preload("res://Sprites/titlescreen_2.png")

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _on_Button_mouse_entered():
	self.set_texture(titlescreen_2)
	


func _on_Button_mouse_exited():
	self.set_texture(titlescreen_1)
