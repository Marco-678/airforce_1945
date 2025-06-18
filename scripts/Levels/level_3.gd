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
const pl51 = preload("res://scenes/enemy5_l2.tscn")
const MINIBOSS = preload("res://scenes/mini_boss.tscn")
const VICTORY = preload("res://scenes/Schermata di vittoria1.tscn")
const GAMEOVER = preload("res://scenes/game_over.tscn")
var deltafine = 0
var ceppo = 0


func _process(delta: float) -> void:
	
	DELTA += delta
	
	if DELTA < 10 and $Timer.is_stopped():
		$Timer.start(delay)
		var enemy3 = pl3.instantiate()
		enemy3.position = position
		get_tree().current_scene.add_child(enemy3)
		
	if DELTA > 16 and DELTA < 23 and $Timer.is_stopped():
		$Timer.start(delay2)
		var enemy2 = pl2.instantiate()
		enemy2.position = position
		get_tree().current_scene.add_child(enemy2)
	
	if DELTA > 23 and DELTA < 33 and $Timer.is_stopped():
		$Timer.start(delay4)
		var enemy8 = pl8.instantiate()
		enemy8.position = position
		get_tree().current_scene.add_child(enemy8)
		
	if DELTA > 31 and DELTA < 37 and $Timer.is_stopped():
		$Timer.start(delay3)
		var enemy2 = pl2.instantiate()
		enemy2.position = position
		get_tree().current_scene.add_child(enemy2)
		
	if DELTA > 38 and DELTA < 44 and $Timer.is_stopped():
		$Timer.start(delay3)
		var enemy6 = pl6.instantiate()
		enemy6.position = position
		get_tree().current_scene.add_child(enemy6)
	
	if DELTA > 49 and DELTA < 51 and $Timer.is_stopped():
		print("stable")
		$Timer.start(delay4)
		var miniboss = MINIBOSS.instantiate()
		miniboss.position = position
		get_tree().current_scene.add_child(miniboss)
		
	if DELTA > 52 and DELTA < 56 and $Timer.is_stopped():
		print("afses")
		$Timer.start(delay2)
		var enemy5 = pl5.instantiate()
		enemy5.position = position
		get_tree().current_scene.add_child(enemy5)
		
	if Global.score >= 1440:
		deltafine += delta
		if deltafine > 1 and ceppo == 0:
			var victory = VICTORY.instantiate()
			get_tree().current_scene.add_child(victory)
			ceppo = 1
			Global.level  = 3
		
	if Global.life <= 0:
			deltafine += delta
			if deltafine > 1 and ceppo == 0:
				var gameover = GAMEOVER.instantiate()
				get_tree().current_scene.add_child(gameover)
				ceppo = 1
				Global.level  = 3
