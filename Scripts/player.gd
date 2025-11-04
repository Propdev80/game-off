class_name Player extends CharacterBody2D

# Constants

const WALK_SPEED = 61 # The player's walk speed.
const DASH_SPEED = 120 # The player's dash speed.

# Variables

# Functions

func _physics_process(_delta: float) -> void:
	# Movement
	
	#Set the movement by getting the vector and multiplying by walkspeed
	velocity = (Input.get_vector("kLeft", "kRight","kUp","kDown")) * WALK_SPEED
	move_and_slide()
