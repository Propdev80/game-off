class_name Root extends Node2D

# Signals

signal newRoom

# Variables

@export var currentRoom : Room

# Functions

func _ready() -> void:
	newRoom.emit()

func switchRoom(room : String):
	# Creates an instance of the new room
	var r : Room = load(room).instantiate()
	# Switches the old room with "r"
	call_deferred("add_child", r)
	call_deferred("remove_child", currentRoom)
	currentRoom = r
	newRoom.emit()
