extends CharacterBody2D

# Constants

const WALK_SPEED = 30 # The sinelings walk speed

# Variables

var Direction : Vector2 = Vector2(1, 1) # The direction the sineling will go
@onready var sprites: AnimatedSprite2D = $Sprites

# Functions

func _physics_process(_delta: float) -> void:
	
	if Direction.x < 0:
		sprites.flip_h = false
		sprites.position.x = 7
	else:
		sprites.flip_h = true
		sprites.position.x = -7
	
	# Bouncing
	if is_on_ceiling():
		Direction.y = 1
	if is_on_floor():
		Direction.y = -1
	if is_on_wall():
		Direction.x *= -1
	velocity = Direction * WALK_SPEED
	move_and_slide()
