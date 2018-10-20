extends Area2D

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Dad":
			if Input.is_action_pressed("ui_up"):
				get_tree().change_scene("FadeScene.tscn")