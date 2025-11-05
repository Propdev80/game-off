class_name Camera extends Camera2D

# Variables

@export var r : Root
@export var p : Player
@export var c : Room

# Functions

func _ready() -> void:
	r.newRoom.connect(newRoom)
	BeatManager.beat.connect(onBeat)

func _process(_delta: float) -> void:
	if c.CameraMode == "Player":
		global_position = lerp(p.global_position, get_global_mouse_position(), 0.1)

func newRoom():
	c = r.currentRoom
	if c.CameraMode == "Static":
		global_position = Vector2(160, 90)

func onBeat():
	pass
