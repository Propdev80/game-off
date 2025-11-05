extends Node2D

# Signals

signal beat

# Functions

func _on_timer_timeout() -> void:
	print("beat")
	beat.emit()
