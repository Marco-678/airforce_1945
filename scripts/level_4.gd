extends Node2D

var DELTA = 0
var delay = 1
var delay2 = 2
var delay3 = 3
var delay4= 4

const pl = preload("res://scenes/enemy_1.tscn")
const pl2 = preload("res://scenes/enemy_2.tscn")
const pl7 = preload("res://scenes/enemy_7.tscn")
const pl51 = preload("res://scenes/enemy5_l2.tscn")
const pl31 = preload("res://scenes/enemy3_l2.tscn")
const pl11 = preload("res://scenes/enemy1_l2.tscn")
const pl4 = preload("res://scenes/enemy_4.tscn")

func _process(delta: float) -> void:
	
	DELTA += delta
	
	if DELTA < 10 and $Timer.is_stopped():
		$Timer.start(delay2)
		var enemy7 = pl7.instantiate()
		enemy7.position = position
		get_tree().current_scene.add_child(enemy7)
		
	if DELTA > 10 and DELTA < 15 and $Timer.is_stopped():
		$Timer.start(delay2)
		var enemy51 = pl51.instantiate()
		enemy51.position = position
		get_tree().current_scene.add_child(enemy51)
	
	if DELTA > 15 and DELTA < 25 and $Timer.is_stopped():
		$Timer.start(delay2)
		var enemy11 = pl11.instantiate()
		enemy11.position = position
		get_tree().current_scene.add_child(enemy11)
		
		$Timer.start(delay2)
		var enemy4 = pl4.instantiate()
		enemy4.position = position
		get_tree().current_scene.add_child(enemy4)
		
	if DELTA > 25 and DELTA < 30 and $Timer.is_stopped():
		$Timer.start(delay)
		var enemy2 = pl2.instantiate()
		enemy2.position = position
		get_tree().current_scene.add_child(enemy2)
		
