extends Camera2D

var target : Node2D
var follow_speed = 10  # How fast the camera follows

func _ready():
	target = get_parent()  # Assuming the camera is a child of the sprite node

func _process(_delta):
	position = target.position + Vector2(50, 0) 
