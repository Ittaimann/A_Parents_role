extends Timer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	start()	
	pass

func _process(delta):
	print(is_stopped())
	if is_stopped():
		get_tree().change_scene("Home.tscn")