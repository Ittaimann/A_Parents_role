extends AudioStreamPlayer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _on_DaughterTimer_timeout():
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://audio/Transition (Beta).ogg")
	player.play()
