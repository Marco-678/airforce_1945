extends Area2D

const A_Y = 10;
const A_RY = 7;
const A_X = 8;
const A_RX = 4;

const EXPLOSION = preload("res://scenes/explosions.tscn")
const PROPULSOR = preload("res://scenes/propulsor_airplane.tscn")

var speed_y = 0
var speed_x = 0
var module_y = 0
var module_x = 0
var deltaright = 0
var deltaleft = 0
var deltaright2 = 0
var deltaleft2 = 0
var r = 0
var l = 0

var score = 0
var fireDelay = 0.1
var propulsor = 0


var plBullet = preload("res://scenes/bullet.tscn")

func _ready() -> void:
	propulsor = PROPULSOR.instantiate()
	get_tree().current_scene.add_child(propulsor)

func _physics_process(_delta):
	
	propulsor.position.x = position.x
	propulsor.position.y = position.y + 40
	
	var ay = 0
	var ax = 0
	
	
	if Input.is_action_pressed("move_up"):
		ay = A_Y * -1;
		
	elif Input.is_action_pressed("move_down"):
		ay = A_Y
		
	else:
		if speed_y < -0.1:
			ay = A_RY
		elif speed_y > 0.1:
			ay = A_RY * -1
		else:
			ay = 0
		
	if Input.is_action_pressed("move_right"):
		r = 1
		l = 0
		ax = A_X
		deltaright += _delta
		deltaleft = 0
		
		if deltaright < 0.5:
			$AnimatedSprite2D.play("right")
		else:
			$AnimatedSprite2D.play("right_fisso")
		
	elif Input.is_action_pressed("move_left"):
		r = 0
		l = 1
		ax = A_X * -1
		deltaleft += _delta
		deltaright = 0
		
		if deltaleft < 0.5:
			$AnimatedSprite2D.play("left")
		else:
			$AnimatedSprite2D.play("left_fisso")
		
	elif r == 1 and not Input.is_action_pressed("move_right"):
		deltaright2 += _delta
		deltaleft2 = 0
		
		if deltaright2 < 0.5:
			$AnimatedSprite2D.play("right_indietro")
		else:
			r = 0
			$AnimatedSprite2D.play("default")
		
		
	elif l == 1 and not Input.is_action_pressed("move_left"):
		deltaleft2 += _delta
		deltaright2 = 0
		
		if deltaleft2 < 0.22:
			$AnimatedSprite2D.play("left_indietro")
		else:
			l = 0
			$AnimatedSprite2D.play("default")
		
		
	else:
		deltaright = 0
		deltaleft = 0
		deltaleft2 = 0
		deltaright2 = 0
		
		l = 0
		r = 0
		$AnimatedSprite2D.play("default")
		
		if speed_x < -0.1:
			ax = A_RX
		elif speed_x > 0.1:
			ax = A_RX * -1
		else:
			ax = 0
		
	if position.x >= 600 and Input.is_action_pressed("move_right"):
		ax = 0
	if position.x <= 0 and Input.is_action_pressed("move_left"):
		ax = 0
	if position.y <= 50 and Input.is_action_pressed("move_up"):
		ay = 0
	if position.y >= 920 and Input.is_action_pressed("move_down"):
		ay = 0
	
	
	speed_y += ay * _delta
	position.y += 0.5*ay*pow(_delta,2)+speed_y
	
	
	position.x += 0.5*ax*pow(_delta,2)+speed_x
	speed_x += ax * _delta
	
	
	position.x = clamp(0, position.x, 600)
	position.y = clamp(-50, (position.y), 920)
	

func _process(delta: float) -> void:
	if Input.is_action_pressed("shoot") and $Delay.is_stopped():
		$Delay.start(fireDelay)
		var bullet = plBullet.instantiate()
		bullet.position = position
		get_tree().current_scene.add_child(bullet)
	if Global.life <= 0:
		
		var explosion = EXPLOSION.instantiate()
		explosion.global_position = global_position
		get_tree().current_scene.add_child(explosion)
		queue_free()
		
func _on_area_entered(area: Area2D) -> void:
	Global.life -= 1
	
	if Global.life <= 0:
		
		var explosion = EXPLOSION.instantiate()
		explosion.global_position = global_position
		get_tree().current_scene.add_child(explosion)

		queue_free()
