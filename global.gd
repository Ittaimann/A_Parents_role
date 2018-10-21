extends Node

var days=1
var daughterTime=15

func _process(delta):
	if (days >= 19):
		if(daughterTime > 15):
			get_tree().change_scene("res://scenes/goodEnding.tscn")

		#	print("bad end")
		else:
			get_tree().change_scene("res://scenes/badEnd.tscn")
		#	print ("good end")
 