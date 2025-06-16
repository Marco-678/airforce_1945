extends Area2D

const EXPLOSION = preload("res://scenes/explosions.tscn")

var plBulletenemy3 = preload("res://scenes/bullet_enemy.tscn")
var fireDelay = 0.3
var life = 3

func _ready() -> void:
	position.x = -300

func _physics_process(delta: float) -> void:
	
	position.x += 1
	position.y = 2000/(position.x + 150) +300
	
func _process(delta: float) -> void:
	
	if $DelayTime.is_stopped():
		$DelayTime.start(fireDelay)
		var bulletenemy3 = plBulletenemy3.instantiate()
		bulletenemy3.position = position
		get_tree().current_scene.add_child(bulletenemy3)
		
func _on_area_entered(area: Area2D) -> void:
	life -= 1
	if life <= 0:
		var explosion = EXPLOSION.instantiate()
		explosion.global_position = global_position
		get_tree().current_scene.add_child(explosion)
		queue_free()
