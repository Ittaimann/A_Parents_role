extends Area2D

signal choseDoor

func _ready():
	pass
	

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Dad":
			if Input.is_action_pressed("ui_down"):
				print("down pressed")
				emit_signal("choseDoor")

