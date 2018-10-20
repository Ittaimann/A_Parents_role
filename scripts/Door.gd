extends Area2D

var choseDoor

func _ready():
	choseDoor = false

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "DadMoving":
			print("touching dad")
			if Input.is_action_pressed("ui_down"):
				print("down pressed")
				choseDoor = true

func dad_chose_door():
	return choseDoor
	
	
	