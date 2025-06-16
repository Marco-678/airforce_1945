extends Node2D


var DELTA = 0
var delay = 2
var delay2 = 3
var enemy1
var enemy3
var enemy4
const pl = preload("res://scenes/enemy_1.tscn")
const pl3 = preload("res://scenes/enemy_3.tscn")
const pl4 = preload("res://scenes/enemy_5.tscn")



func _process(delta: float) -> void:
	DELTA += delta
	
	
	if DELTA < 6 and $Timer.is_stopped():
		$Timer.start(delay)
		var enemy1 = pl.instantiate()
		enemy1.position = position
		get_tree().current_scene.add_child(enemy1)

	if DELTA > 5 and DELTA < 14 and $Timer.is_stopped():
		$Timer.start(delay)
		var enemy3 = pl3.instantiate()
		enemy3.position = position
		get_tree().current_scene.add_child(enemy3)
		
		
	if DELTA > 10 and DELTA < 25 and $Timer.is_stopped():
		$Timer.start(delay2)
		var enemy4 = pl4.instantiate()
		enemy4.position = position
		get_tree().current_scene.add_child(enemy4)
		
		
	if DELTA > 22 and DELTA < 25 and $Timer.is_stopped():
		$Timer.start(delay)
		var enemy1 = pl.instantiate()
		enemy1.position = position
		get_tree().current_scene.add_child(enemy1)
