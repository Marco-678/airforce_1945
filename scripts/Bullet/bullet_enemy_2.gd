extends Area2D

const EXPLOSION = preload("res://scenes/explosionpro.tscn")

var speed2 = 600

func _physics_process(delta2: float) -> void:

	position.y += speed2 * delta2

	if not(position.x > 0 and position.x < 600 and position.y > 0 and position.y < 1024):
		queue_free()
	
func _on_area_entered(area: Area2D) -> void:
	var explosion = EXPLOSION.instantiate()
	explosion.global_position = global_position
	get_tree().current_scene.add_child(explosion)
	queue_free()
