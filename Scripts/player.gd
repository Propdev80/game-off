class_name Player extends CharacterBody2D

# Constants

const WALK_SPEED = 61 # The player's walk speed.
const DASH_SPEED = 120 # The player's dash speed.

# Variables

@export var r : Root

@onready var sprites: AnimatedSprite2D = $PlayerSprites
@onready var collision: CollisionShape2D = $CollisionShape2D

# Functions

func _ready() -> void:
	r.newRoom.connect(changePos)

func _physics_process(_delta: float) -> void:
	# Movement
	
	#Set the movement by getting the vector and multiplying by walkspeed
	velocity.x = Input.get_axis("kLeft", "kRight") * WALK_SPEED
	velocity.y = Input.get_axis("kUp", "kDown") * WALK_SPEED
	move_and_slide()
	
	# Appearance
	
	#Flip the character depending on mouse position
	if global_position < get_global_mouse_position():
		sprites.flip_h = true
	else:
		sprites.flip_h = false

func changePos():
	global_position = r.currentRoom.startPosition
