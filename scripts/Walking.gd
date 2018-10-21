extends KinematicBody2D

#const GRAVITY = 20
#const SPEED = 175

const GRAVITY = 0
const SPEED = 300
const JUMPHEIGHT = -50

const UP = Vector2(0,-1)
var motion = Vector2()
var initialPos = Vector2()
var paused = false

func _ready():
	initialPos = transform
	$dadTimer.set_wait_time(1)

func _physics_process(delta):
	motion.y += GRAVITY

	if not paused and Input.is_action_pressed("ui_right"):
		$AnimatedSprite.play("walk")
		$AnimatedSprite.set_flip_h(false)
		motion.x = SPEED
	elif not paused and Input.is_action_pressed("ui_left"):
		$AnimatedSprite.set_flip_h(true)
		$AnimatedSprite.play("walk")
		motion.x = -SPEED
	else:
		motion.x = 0
		$AnimatedSprite.stop()

	motion = move_and_slide(motion, UP)
		
	pass


func _on_Fadeout_nextDay():
	print("LOL")
	transform = initialPos
	
	$dadTimer.set_wait_time(1.5)
	$dadTimer.start()


func _on_Door_choseDoor():
	paused = true


func _on_Daughter_talked():
	paused = true


func _on_dadTimer_timeout():
	paused = false
	$dadTimer.stop()
