extends Area2D



var speed2 = 500

func _physics_process(delta2: float) -> void:
	position.y += speed2 * delta2
	


func _on_area_entered(area: Area2D) -> void:
	Global.life -= 10
	queue_free()
