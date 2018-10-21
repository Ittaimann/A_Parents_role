extends Node

var days=1
var daughterTime=0

func _process(delta):
	if(days == 10 and daughterTime<5):
		print("bad end")
	else:
		print ("good end")
 