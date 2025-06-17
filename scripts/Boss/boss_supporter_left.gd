extends Area2D

const EXPLOSION = preload("res://scenes/explosions.tscn")
const plLaserenemy = preload("res://scenes/op_boss_lasers.tscn")


var fireDelay = 0.3
var fireDelay2 = 0.3
var fireDelay3 = 0.3
var life = 80
var LaserDelay = 3


func _ready() -> void:

	position.y = -0

func _physics_process(delta: float) -> void:
	
	position.y += 3
	position.x = -(pow(position.y, 2)/2000) + (position.y)/2
	
	
	
