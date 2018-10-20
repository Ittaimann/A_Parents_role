extends KinematicBody2D

const GRAVITY = 20
const SPEED = 175

const GRAVITY = 0
const SPEED = 70
const JUMPHEIGHT = -50

const UP = Vector2(0,-1)
var motion = Vector2()

func _physics_process(delta):
	motion.y += GRAVITY

	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
	else:
		motion.x = 0

	motion = move_and_slide(motion, UP)

	pass
