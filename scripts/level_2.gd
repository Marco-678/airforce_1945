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
		
		
	if DELTA > 16 and DELTA < 28 and $Timer.is_stopped():
		$Timer.start(delay2)
		var enemy5 = pl5.instantiate()
		enemy5.position = position
		get_tree().current_scene.add_child(enemy5)
		
	if DELTA > 8 and DELTA < 28 and $Timer.is_stopped():
		$Timer.start(delay2)
		var enemy4 = pl4.instantiate()
		enemy4.position = position
		get_tree().current_scene.add_child(enemy4)
		
	if DELTA > 25 and DELTA < 32 and $Timer.is_stopped():
		$Timer.start(delay)
		var enemy1 = pl1.instantiate()
		enemy1.position = position
		get_tree().current_scene.add_child(enemy1)
		
		
	if DELTA > 38 and DELTA < 48 and $Timer.is_stopped():
		print("sigma")
		$Timer.start(delay)
		var enemy2 = pl2.instantiate()
		enemy2.position = position
		get_tree().current_scene.add_child(enemy2)
		
	if DELTA > 34 and DELTA < 54 and $Timer.is_stopped():
		$Timer.start(delay)
		var enemy4 = pl4.instantiate()
		enemy4.position = position
		get_tree().current_scene.add_child(enemy4)
