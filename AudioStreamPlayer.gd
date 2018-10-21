extends AudioStreamPlayer

# class member variables go here, for example:
# var a = 2
var currentlyPlaying
func _ready():
	currentlyPlaying = "res://audio/House (Beta).ogg"
	stream = load (currentlyPlaying)
	play()


func _on_text_box_sceneVars(anim, music):
	print(currentlyPlaying)
	print("res://audio/" + str(music))
	print((currentlyPlaying != "res://audio/" + str(music)))
	if (currentlyPlaying != "res://audio/" + str(music)):
		print("WHAT")
		stop()
		
		stream = load("res://audio/" + str(music))
		currentlyPlaying  = "res://audio/" + str(music)
		play()
