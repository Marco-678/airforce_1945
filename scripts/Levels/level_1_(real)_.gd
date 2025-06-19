extends Node2D

var DELTA = 0
var deltafine = 0
var delay = 2
var delay2 = 3
var delay3 = 4
const pl = preload("res://scenes/enemy_1.tscn")
const pl3 = preload("res://scenes/enemy_3.tscn")
const pl5 = preload("res://scenes/enemy_5.tscn")
const pl2 = preload("res://scenes/enemy_2.tscn")
const pl4 = preload("res://scenes/enemy_4.tscn")
const GAMEOVER = preload("res://scenes/game_over.tscn")
const VICTORY = preload("res://scenes/Schermata di vittoria1.tscn")

var ceppo = 0


func _process(delta: float) -> void:
	DELTA += delta
	
	
	if DELTA < 6 and $Timer.is_stopped():
		$Timer.start(delay3)
		var enemy1 = pl.instantiate()
		enemy1.position = position
		get_tree().current_scene.add_child(enemy1)

	if DELTA < 20 and $Timer.is_stopped():
		$Timer.start(delay)
		var enemy3 = pl3.instantiate()
		enemy3.position = position
		get_tree().current_scene.add_child(enemy3)
		

	if DELTA > 1 and DELTA < 30 and $Timer.is_stopped():
		$Timer.start(delay2)
		var enemy5 = pl5.instantiate()
		enemy5.position = position
		get_tree().current_scene.add_child(enemy5)
		
	if DELTA > 33 and DELTA < 39 and $Timer.is_stopped():
		$Timer.start(delay3)
		var enemy2 = pl2.instantiate()
		enemy2.position = position
		get_tree().current_scene.add_child(enemy2)
		
	if DELTA > 29 and DELTA < 44 and $Timer.is_stopped():
		$Timer.start(delay)
		var enemy4 = pl4.instantiate()
		enemy4.position = position
		get_tree().current_scene.add_child(enemy4)

	if DELTA > 7 and DELTA < 22 and $Timer.is_stopped():

		$Timer.start(delay)
		var enemy4 = pl4.instantiate()
		enemy4.position = position
		get_tree().current_scene.add_child(enemy4)

		
	if DELTA > 18 and DELTA < 20 and $Timer.is_stopped():
		print("qwerty")
		$Timer.start(delay2)
		var enemy1 = pl.instantiate()
		enemy1.position = position
		get_tree().current_scene.add_child(enemy1)
		
	if DELTA > 65 and Global.score < 560:
		if ceppo == 0:
			var gameover = GAMEOVER.instantiate()
			get_tree().current_scene.add_child(gameover)
			ceppo = 1
			Global.level  = 1
		
	if Global.score >= 560:
		deltafine += delta
		if deltafine > 1 and ceppo == 0:
			var victory = VICTORY.instantiate()
			get_tree().current_scene.add_child(victory)
			ceppo = 1
			Global.level  = 1
	
	if Global.life <= 0:
		deltafine += delta
		if deltafine > 1 and ceppo == 0:
			var gameover = GAMEOVER.instantiate()
			get_tree().current_scene.add_child(gameover)
			ceppo = 1
			Global.level  = 1
