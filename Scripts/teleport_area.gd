extends Area2D

# Variables

@export var newRoom : String

# Functions

func _on_body_entered(body: CharacterBody2D) -> void:
	if body.is_in_group("Player"):
		# Gets the "root" node
		var p : Root = get_parent().get_parent()
		# Switches the room to "Newroom"
		p.switchRoom(newRoom)
