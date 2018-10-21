extends Sprite

var deadforsure = false

var happyface = preload("res://Sprites/emotionmeter_sprites_spliced/emotionmeter_happy.png")
var neutralface = preload("res://Sprites/emotionmeter_sprites_spliced/emotionmeter_middle.png")
var sadface = preload("res://Sprites/emotionmeter_sprites_spliced/emotionmeter_sad.png")
var deadface = preload("res://Sprites/emotionmeter_sprites_spliced/deadface.png")

func _ready():
	deadforsure = false

func _process(delta):
	if global.daughterTime >= 15:
		self.set_texture(happyface)
	elif global.daughterTime < 15 and global.daughterTime > 10:
		self.set_texture(neutralface)
	elif global.daughterTime <= 10 and global.daughterTime >= 2:
		self.set_texture(sadface)
	elif global.daughterTime < 2:
		self.set_texture(deadface)
	
