extends Area2D

signal talked

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Dad":
			if Input.is_action_just_pressed("ui_up"):
				emit_signal("talked")
				get_tree().change_scene("FadeScene.tscn")
				