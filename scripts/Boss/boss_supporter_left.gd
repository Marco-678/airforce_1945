extends Area2D

const EXPLOSION = preload("res://scenes/explosions.tscn")
const plSidelaserenemy = preload("res://scenes/BossSideLasers.tscn")



var life = 5
var LaserDelay = 1


func _ready() -> void:

	position.y = 0

func _physics_process(delta: float) -> void:
	
	position.y += 3
	position.x = -(pow(position.y, 2)/2000) + (position.y)/2
	
func _process(delta: float) -> void:
	
	if position.x > 0 and position.x < 600 and position.y > 0 and position.y < 900:
			
			
		if $OpLaserDelay.is_stopped():
			
			$OpLaserDelay.start(LaserDelay)
			var opbulletsideenemyboss = plSidelaserenemy.instantiate()
			opbulletsideenemyboss.position = position
			get_tree().current_scene.add_child(opbulletsideenemyboss)
			
	
