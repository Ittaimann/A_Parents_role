extends Sprite



func _on_text_box_sceneVars(SceneVars):
	if SceneVars == "sick":
		$AnimatedSprite.play("sick")
	else:
		$AnimatedSprite.play("healty")
	
