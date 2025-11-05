extends Node2D

# Variables

@onready var sprite: Sprite2D = $CanvasLayer/Sprite2D

# Functions

func _ready() -> void:
	BeatManager.beat.connect(onBeat)

func _process(delta: float) -> void:
	sprite.scale = lerp(sprite.scale, Vector2.ONE, 0.1)

func onBeat():
	sprite.scale = Vector2(1.75, 1.75)
