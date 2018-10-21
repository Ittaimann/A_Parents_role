extends Area2D

signal talked
var paused = false

func _ready():
	$daughterPauseTimer.set_wait_time(1)
	

func _physics_process(delta):
	if global.daughterTime < 2:
		self.hide()
	
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Dad":
			print("touching")
			if not paused and Input.is_action_just_pressed("ui_down"):
				emit_signal("talked")
	



func _on_text_box_sceneVars(anims):
	
	if(anims == "sick"):
		$AnimatedSprite.hide()
	else:
		$AnimatedSprite.show()
		$AnimatedSprite.play(anims)


func _on_Daughter_talked():
	
	if global.daughterTime > 1 and not global.days == 7:
		global.daughterTime = min(global.daughterTime + 1, 20)
	paused = true


func _on_Fadeout_nextDay():
	$daughterPauseTimer.set_wait_time(2.5)
	$daughterPauseTimer.start()


func _on_daughterPauseTimer_timeout():
	$daughterPauseTimer.stop()
	paused = false
