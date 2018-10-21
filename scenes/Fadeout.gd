extends ColorRect

signal playing;
signal nextDay;
func _ready():
	$doorTimer.set_wait_time(1)
	
func _process(delta):
	pass
		


func _on_Door_choseDoor():
	$AnimationPlayer.play("Fade")
	$"day Text".text = "The next day..."
	$doorTimer.wait_time = $AnimationPlayer.get_current_animation_length()/3
	$doorTimer.start()
	

	


func _on_fadeTimer_timeout():
	emit_signal("nextDay")
	$doorTimer.set_wait_time(1)
	$doorTimer.stop()

func _on_Daughter_talked():
	$DaughterTimer.wait_time = 1.5
	$DaughterTimer.start()


func _on_DaughterTimer_timeout():
	$DaughterTimer.stop()
	$AnimationPlayer.play("Fade")
	$"day Text".text = "The next day..."
	$doorTimer.wait_time = $AnimationPlayer.get_current_animation_length()/3
	$doorTimer.start()
