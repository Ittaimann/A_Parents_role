extends Sprite



func _on_text_box_sceneVars(anim,audio):
	if anim == "sick":
		$AnimatedSprite.play("sick")
		
	else:
		$AnimatedSprite.play("healthy")
	
