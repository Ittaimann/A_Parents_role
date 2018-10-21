extends Area2D

signal choseDoor
var paused = false

func _ready():
	pass
	

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Dad":
			if not paused and Input.is_action_just_pressed("ui_down"):
				print("down pressed")
				emit_signal("choseDoor")




func _on_Door_choseDoor():
	paused = true



func _on_Fadeout_nextDay():
	paused = false
