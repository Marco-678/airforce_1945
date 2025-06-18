extends Area2D

const EXPLOSION = preload("res://scenes/explosionpro.tscn")

var posinx = position.x
var posiny = position.y
var rand = 0

func _ready() -> void:
	posinx = position.x
	posiny = position.y
	rand = Global.rand

func _physics_process(delta2: float) -> void:
	
	if not(position.x > 0 and position.x < 600 and position.y > 0 and position.y < 1024):
		queue_free()
		
	position.y += 20
	position.x = (position.y + (rand * posinx) - posiny) / rand
	
	


func _on_area_entered(area: Area2D) -> void:
	var explosion = EXPLOSION.instantiate()
	explosion.global_position = global_position
	get_tree().current_scene.add_child(explosion)
	queue_free()
