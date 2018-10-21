extends ColorRect

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	$shortTimer.set_wait_time(0.2)
	$shortTimer.start()




func _on_shortTimer_timeout():
	$shortTimer.stop()
	self.hide()
	