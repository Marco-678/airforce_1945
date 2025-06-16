extends Node2D


var DELTA = 0
var delay = 2
var delay2 = 3
var enemy1
var enemy2
var enemy3
var enemy4
var enemy5
const pl1= preload("res://scenes/enemy1_l2.tscn")
const pl2 = preload("res://scenes/enemy2_l2.tscn")
const pl3 = preload("res://scenes/enemy3_l2.tscn")
const pl4 = preload("res://scenes/enemy4_l2.tscn")
const pl5 = preload("res://scenes/enemy5_l2.tscn")


func _process(delta: float) -> void:
	DELTA += delta
	
	
	if DELTA > 2 and DELTA < 10 and $Timer.is_stopped():
		$Timer.start(delay)
		var enemy1 = pl1.instantiate()
		enemy1.position = position
		get_tree().current_scene.add_child(enemy1)
		
	if DELTA > 8 and DELTA < 15 and $Timer.is_stopped():
		$Timer.start(delay2)
		var enemy4 = pl4.instantiate()
		enemy4.position = position
		get_tree().current_scene.add_child(enemy4)

	if DELTA < 24 and $Timer.is_stopped():
		$Timer.start(delay)
		var enemy3 = pl3.instantiate()
		enemy3.position = position
		get_tree().current_scene.add_child(enemy3)
		
		
	if DELTA > 8 and DELTA < 25 and $Timer.is_stopped():
		$Timer.start(delay2)
		var enemy4 = pl4.instantiate()
		enemy4.position = position
		get_tree().current_scene.add_child(enemy4)
		
		
	if DELTA > 25 and DELTA < 30 and $Timer.is_stopped():
		$Timer.start(delay)
		var enemy1 = pl1.instantiate()
		enemy1.position = position
		get_tree().current_scene.add_child(enemy1)
		
		
	if DELTA > 32 and DELTA < 45 and $Timer.is_stopped():
		print("sigma")
		$Timer.start(delay)
		var enemy2 = pl2.instantiate()
		enemy2.position = position
		get_tree().current_scene.add_child(enemy2)
