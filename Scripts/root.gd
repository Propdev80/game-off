class_name Root extends Node2D

# Variables

@export var currentRoom : Node2D

# Functions

func switchRoom(room : String):
	# Creates an instance of the new room
	var r = load(room).instantiate()
	
	# Switches the old room with "r"
	call_deferred("add_child", r)
	call_deferred("remove_child", currentRoom)
	currentRoom = r
