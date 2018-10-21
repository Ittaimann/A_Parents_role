extends ColorRect

signal playing;
signal veryFirstDay;

func _ready():
	$fadeTimer.set_wait_time(1)
	
func _process(delta):
	pass
	
func _on_Button_pressed():
	$Button.hide()
	$AnimationPlayer.play("fadetoblack")
	$fadeTimer.wait_time = $AnimationPlayer.get_current_animation_length()
	$fadeTimer.start()

func _on_fadeTimer_timeout():
	emit_signal("veryFirstDay")
	get_tree().change_scene("home.tscn")
	$fadeTimer.set_wait_time(1)
	$fadeTimer.stop()



