extends Area2D

const EXPLOSION = preload("res://scenes/explosions.tscn")


var plBulletenemy = preload("res://scenes/bullet_enemy.tscn")
var plBulletenemy2 = preload("res://scenes/bullet_enemy_2.tscn")
var fireDelay = 0.3
var fireDelay2 = 0.5
var life = 5


func _ready() -> void:
	position.x = -900

func _physics_process(delta: float) -> void:
	
	position.x += 1
	position.y = -pow(position.x,2)/90 + 5*position.x
	
func _process(delta: float) -> void:
	
	if $DelayTime.is_stopped():
		$DelayTime.start(fireDelay)
		var bulletenemy = plBulletenemy.instantiate()
		bulletenemy.position = position
		get_tree().current_scene.add_child(bulletenemy)
		
	if $DelayTime2.is_stopped():
		$DelayTime2.start(fireDelay2)
		var bulletenemy2 = plBulletenemy2.instantiate()
		bulletenemy2.position = position
		get_tree().current_scene.add_child(bulletenemy2)
		

func _on_area_entered(area: Area2D) -> void:
	life -= 1
	if life <= 1:
		var explosion = EXPLOSION.instantiate()
		explosion.global_position = global_position
		get_tree().current_scene.add_child(explosion)
		queue_free()
