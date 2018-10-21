extends Node

var days=1
var daughterTime=0

func _process(delta):
	if (days >= 19):
		if(daughterTime>15):
			print("good")
		#	print("bad end")
		else:
			print("bad")
		#	print ("good end")
 