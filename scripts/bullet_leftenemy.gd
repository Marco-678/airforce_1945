extends Area2D


const EXPLOSION = preload("res://scenes/explosionpro.tscn")

var speed2 = 600

func _physics_process(delta2: float) -> void:
	if position.x >= -60:
		position.x -= 10
		position.y += 20
	

	



	
