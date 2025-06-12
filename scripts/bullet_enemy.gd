extends Area2D

const EXPLOSION = preload("res://scenes/explosionpro.tscn")

var speed = 600

func _physics_process(delta: float) -> void:
	position.y += speed * delta



func _on_area_entered(area: Area2D) -> void:
	var explosion = EXPLOSION.instantiate()
	explosion.global_position = global_position
	get_tree().current_scene.add_child(explosion)
	queue_free()
