extends Area2D

var speed2 = 600

func _physics_process(delta2: float) -> void:

	position.y += speed2 * delta2
