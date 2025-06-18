extends Area2D

const EXPLOSION = preload("res://scenes/explosionpro.tscn")

var posinx = position.x
var posiny = position.y

func _ready() -> void:
	posinx = position.x
	posiny = position.y
	print(Global.rand)

func _physics_process(delta2: float) -> void:
	
	position.y += 20
	position.x = (position.y + (Global.rand * posinx) - posiny) / Global.rand


func _on_area_entered(area: Area2D) -> void:
	var explosion = EXPLOSION.instantiate()
	explosion.global_position = global_position
	get_tree().current_scene.add_child(explosion)
	queue_free()
