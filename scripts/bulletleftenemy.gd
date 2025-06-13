extends Area2D


var speed2 = 600

func _physics_process(delta2: float) -> void:
	if position.x > 0:
		position.x +=5
		position.y = position.x
	
func _on_area_entered(area: Area2D) -> void:
	queue_free()
