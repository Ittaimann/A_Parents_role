extends Sprite



func _on_text_box_sceneVars(anim):
	print(anim)
	if anim == "sick":
		$AnimatedSprite.play("sick")
		
	else:
		$AnimatedSprite.play("healty")
	
