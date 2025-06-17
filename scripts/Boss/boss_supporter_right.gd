extends Area2D


func _ready() -> void:

	position.y = 0

func _physics_process(delta: float) -> void:
	
	position.y += 3
	position.x = (pow(position.y, 2)/3000) - (position.y)/3 + 550
