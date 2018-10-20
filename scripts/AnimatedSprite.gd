extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"


func _process(delta):
	if Input.is_action_pressed("ui_right"):
		$AnimatedSprite.animation = "walk"
	if Input.is_action_pressed("ui_left"):
		$AnimatedSprite.animation = "cry"
	if Input.is_action_pressed("ui_up"):
		$AnimatedSprite.animation = "happy"
	if Input.is_action_pressed("ui_down"):
		$AnimatedSprite.animation = "sit"
	$AnimatedSprite.play()
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
	