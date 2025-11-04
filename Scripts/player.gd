class_name Player extends CharacterBody2D

# Constants

const WALK_SPEED = 55 # The player's walk speed.
const DASH_SPEED = 120 # The player's dash speed.

# Variables

var currentMove : Vector2 # the movement made in the current frame

# Functions

func _physics_process(_delta: float) -> void:
	# Movement
	
	#Set the movement by getting the vector, normalizing and multiplying by walkspeed
	currentMove = (Input.get_vector("kLeft", "kRight","kUp","kDown").normalized())
	velocity.x = int(currentMove.x * WALK_SPEED)
	velocity.y = int(currentMove.y * WALK_SPEED)
	move_and_slide()
