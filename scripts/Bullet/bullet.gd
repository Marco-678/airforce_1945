extends Area2D

const EXPLOSION = preload("res://scenes/explosionpro.tscn")

var speed = 1200
var score = 0

func _physics_process(delta: float) -> void:
	position.y += -speed * delta
	
	
func _on_area_entered(area: Area2D) -> void:
	if position.y >= 0:
		var explosion = EXPLOSION.instantiate()
		explosion.global_position = global_position
		get_tree().current_scene.add_child(explosion)
		Global.score += 10
		queue_free()
