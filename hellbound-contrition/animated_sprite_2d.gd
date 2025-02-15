extends AnimatedSprite2D


# Speed of movement
var speed = 50  # Pixels per second

func _process(delta):
	# Get the input (WASD or arrow keys)
	var direction = Vector2.ZERO
	
	if Input.is_key_pressed(KEY_W):  # Up
		direction.y -= 1
	if Input.is_key_pressed(KEY_S):  # Down
		direction.y += 1
	if Input.is_key_pressed(KEY_A):  # Left
		direction.x -= 1
	if Input.is_key_pressed(KEY_D):  # Right
		direction.x += 1
	
	# Normalize the direction so movement speed is consistent
	direction = direction.normalized()

	# Move the sprite by updating its position
	position += direction * speed * delta
