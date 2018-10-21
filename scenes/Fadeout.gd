extends ColorRect

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
signal playing;
signal nextDay;
func _ready():
	$fadeTimer.set_wait_time(1)
	
func _process(delta):
	pass
		


func _on_Door_choseDoor():
	print("NANI")
	$AnimationPlayer.play("Fade")
	$fadeTimer.wait_time = $AnimationPlayer.get_current_animation_length()
	$fadeTimer.start()
	


func _on_fadeTimer_timeout():
	emit_signal("nextDay")
	$fadeTimer.set_wait_time(1)
	print($fadeTimer.time_left)
	$fadeTimer.stop()