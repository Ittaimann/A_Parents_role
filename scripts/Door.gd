extends Area2D

signal choseDoor
var paused = false

func _ready():
	$doorpauseTimer.set_wait_time(1)
	

func _physics_process(delta):
	if global.days == 7: 
		paused = true
		
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Dad":
			if not paused and Input.is_action_just_pressed("ui_down"):
				print("down pressed")
				emit_signal("choseDoor")




func _on_Door_choseDoor():
	global.daughterTime = max( global.daughterTime - 1, 0 )
	global.money += 500
	paused = true



func _on_Fadeout_nextDay():
	$doorpauseTimer.set_wait_time(2.5)
	$doorpauseTimer.start()


func _on_doorpauseTimer_timeout():
	$doorpauseTimer.stop()
	paused = false
