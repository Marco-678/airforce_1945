extends Area2D

const EXPLOSION = preload("res://scenes/explosionpro.tscn")

var speed2 = 600

func _physics_process(delta2: float) -> void:

	position.y += speed2 * delta2


func _on_area_entered(area: Area2D) -> void:
	var explosion = EXPLOSION.instantiate()
	explosion.global_position = global_position
	get_tree().current_scene.add_child(explosion)
	Global.score += 10
	queue_free()
