extends Area2D

const EXPLOSION = preload("res://scenes/explosions.tscn")
const plBulletenemyMboss = preload("res://scenes/bullet_enemy.tscn")
const plMiniBossLaser = preload("res://scenes/Laser_MiniBoss.tscn")

var plBulletenemy = preload("res://scenes/bullet_leftenemy.tscn")
var plBulletenemy2 = preload("res://scenes/bullet_enemy_2.tscn")
var plBulletenemy3 = preload("res://scenes/bullet_rightenemy.tscn")

var fireDelay = 0.3
var fireDelay2 = 0.3
var fireDelay3 = 0.3
var life = 30
var LaserDelay = 2

func _ready() -> void:

	position.x = -100

func _physics_process(delta: float) -> void:
	
	if position.x >= -100 and position.x <= 400:
		position.x += 1
		position.y = pow(position.x + 100, 2)/600
		
	if position.x > 400 and position.x <= 595:
		position.x += 1
		position.y = pow(position.x -900, 2)/600
	
	
func _process(delta: float) -> void:
	
	if position.x > 0 and position.x < 600 and position.y > 0 and position.y < 900:
			
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
			
		if $DelayTime3.is_stopped():
			$DelayTime3.start(fireDelay3)
			var bulletenemy3 = plBulletenemy3.instantiate()
			bulletenemy3.position = position
			get_tree().current_scene.add_child(bulletenemy3)
			
		if $DelayTimeLaser.is_stopped():
			$DelayTimeLaser.start(LaserDelay)
			var opbulletenemyMboss = plMiniBossLaser.instantiate()
			opbulletenemyMboss.position = position
			get_tree().current_scene.add_child(opbulletenemyMboss)



func _on_area_entered(area: Area2D) -> void:
	life -= 1
	if life <= 0:
		var explosion = EXPLOSION.instantiate()
		explosion.global_position = global_position
		get_tree().current_scene.add_child(explosion)
		queue_free()
