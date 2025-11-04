extends Area2D

# Variables

@export var newRoom : String

func _on_body_entered(_body: CharacterBody2D) -> void:
	# Gets the "root" node
	var p : Root = get_parent().get_parent()
	p.switchRoom(newRoom)
