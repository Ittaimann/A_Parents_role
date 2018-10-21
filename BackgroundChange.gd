extends Sprite



func _on_text_box_sceneVars(anim,audio):
	print(anim)
	if anim == "sick" || anim == "doctor":
		print("SUCCESS")
		$AnimatedSprite.play("sick")
		
	else:
		$AnimatedSprite.play("healty")
	
