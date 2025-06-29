extends Area2D

const EXPLOSION = preload("res://scenes/explosions.tscn")
const plBulletenemyMboss = preload("res://scenes/bullet_enemy.tscn")
const plMiniBossLaser = preload("res://scenes/Laser_MiniBoss.tscn")
const plBossLaser = preload("res://scenes/boss_laser.tscn")



var plBulletenemy = preload("res://scenes/bullet_leftenemy.tscn")
var plBulletenemy3 = preload("res://scenes/bullet_rightenemy.tscn")
const plBulletenemy_3 = preload("res://scenes/bullet_enemy_3.tscn")

var delaygrosso = 2
var fireDelay0 = 0.3
var fireDelay = 0.3
var fireDelay2 = 0.3
var fireDelay3 = 0.3
var life = 100
var LaserDelay = 3
var posizione = 0
var DELTA = 0
var i = 0

var rng = RandomNumberGenerator.new()
var rng2 = RandomNumberGenerator.new

func _ready() -> void:

	position.x = -100

func _physics_process(delta: float) -> void:
	
	if position.x >= -100 and position.x <= 400 and posizione == 0:
		position.x += 1
		position.y = pow(position.x + 100, 2)/600
		
	if position.x > 400 and position.x < 600 and posizione == 0:
		position.x += 0.5
		position.y = pow(position.x -900, 2)/600
		
		
	if position.x == 600 and position.y == 150:
		print("sigma")
		posizione = 1
		position.x -= 0.7
		position.y = (position.x + 2400)/12
	
	if position.x > -150 and position.x < 600 and posizione == 1:
		position.x -= 0.8
		position.y = (position.x + 2400)/12
	
	
func _process(delta: float) -> void:
	
	DELTA += delta
	i = int(DELTA)
	
	if position.x > 0 and position.x < 600 and position.y > 0 and position.y < 900:
			
		if $DelayTime.is_stopped():
			$DelayTime.start(fireDelay)
			var bulletenemy = plBulletenemy.instantiate()
			bulletenemy.position = position
			get_tree().current_scene.add_child(bulletenemy)
		
			
		if $DelayTime3.is_stopped():
			$DelayTime3.start(fireDelay3)
			var bulletenemy3 = plBulletenemy3.instantiate()
			bulletenemy3.position = position
			get_tree().current_scene.add_child(bulletenemy3)
			
		if $DelayTimeLaser.is_stopped():
			$DelayTimeLaser.start(LaserDelay)
			var opbulletenemyboss = plBossLaser.instantiate()
			opbulletenemyboss.position = position
			get_tree().current_scene.add_child(opbulletenemyboss)
			
		if float(i)/2 != int(i/2):
			if $TimerSmall.is_stopped():
				$TimerSmall.start(fireDelay0)
				var bulletenemy0 = plBulletenemy_3.instantiate()
				bulletenemy0.position = position
				get_tree().current_scene.add_child(bulletenemy0)
		else:
			var random = randi_range(0,1)
			if random == 0:
				var rand = -4
				Global.rand = rand
			else:
				var rand = 4
				Global.rand = rand


	


func _on_area_entered(area: Area2D) -> void:
	life -= 1
	if life <= 0:
		var explosion = EXPLOSION.instantiate()
		explosion.global_position = global_position
		get_tree().current_scene.add_child(explosion)
		queue_free()
