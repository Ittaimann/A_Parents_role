extends Sprite

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	$AnimatedSprite.play("walk")
