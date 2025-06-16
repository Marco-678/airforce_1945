extends Node2D

var DELTA = 0
var delay = 1
var delay2 = 2
var delay3 = 3
var delay4 = 4
const pl = preload("res://scenes/enemy_1.tscn")
const pl2 = preload("res://scenes/enemy_2.tscn")
const pl3 = preload("res://scenes/enemy_3.tscn")
const pl4 = preload("res://scenes/enemy_4.tscn")
const pl5 = preload("res://scenes/enemy_5.tscn")
const pl6 = preload("res://scenes/enemy_6.tscn")
const pl8 = preload("res://scenes/enemy_8.tscn")

func _process(delta: float) -> void:
	
	DELTA += delta
	
	if DELTA < 10 and $Timer.is_stopped():
		$Timer.start(delay)
		var enemy3 = pl3.instantiate()
		enemy3.position = position
		get_tree().current_scene.add_child(enemy3)
		
	if DELTA > 15 and DELTA < 20 and $Timer.is_stopped():
		$Timer.start(delay2)
		var enemy2 = pl2.instantiate()
		enemy2.position = position
		get_tree().current_scene.add_child(enemy2)
	
	if DELTA > 23 and DELTA < 30 and $Timer.is_stopped():
		$Timer.start(delay4)
		var enemy8 = pl8.instantiate()
		enemy8.position = position
		get_tree().current_scene.add_child(enemy8)
