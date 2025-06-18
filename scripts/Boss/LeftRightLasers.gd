extends Area2D
const EXPLOSION = preload("res://scenes/explosionpro.tscn")

var speed2 = 400

func _physics_process(delta2: float) -> void:
	position.y += speed2 * delta2



	

func _on_area_entered(area: Area2D) -> void:
	Global.life -= 5
	queue_free()
