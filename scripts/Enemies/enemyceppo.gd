extends Area2D

const EXPLOSION = preload("res://scenes/explosions.tscn")
const plBulletenemy4 = preload("res://scenes/bullet_enemy.tscn")

var fireDelay = 0.3
var life = 3

func _ready() -> void:
	position.y = -900

func _physics_process(delta: float) -> void:
	
	position.x = 300
	position.y += 2
	
func _process(delta: float) -> void:
	
	if position.y > 0:
		if $DelayTime.is_stopped():
			$DelayTime.start(fireDelay)
			var bulletenemy4 = plBulletenemy4.instantiate()
			bulletenemy4.position = position
			get_tree().current_scene.add_child(bulletenemy4)
		


func _on_area_entered(area: Area2D) -> void:
	if position.y >= 0:
		life -= 1
		if life <= 0:
			var explosion = EXPLOSION.instantiate()
			explosion.global_position = global_position
			get_tree().current_scene.add_child(explosion)
			queue_free()
