extends AnimatedSprite2D

func _ready() -> void:
	await animation_finished
	queue_free()

func _on_animation_finished():
	pass
