extends Area2D

signal talked
var paused = false

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Dad":
			if not paused and Input.is_action_just_pressed("ui_down"):
				emit_signal("talked")
				

func _on_text_box_sceneVars(anims):
	print(anims)
	if(anims == "sick"):
		print("LOL")
		$AnimatedSprite.hide()
	else:
		$AnimatedSprite.show()
		$AnimatedSprite.play(anims)


func _on_Daughter_talked():
	paused = true



func _on_Fadeout_nextDay():
	paused = false
