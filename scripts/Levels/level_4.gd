extends Node2D

var DELTA = 0
var delay = 1
var delay2 = 2
var delay3 = 3
var delay4= 4
var LateralDelay = 6

const pl = preload("res://scenes/enemy_1.tscn")
const pl2 = preload("res://scenes/enemy_2.tscn")
const pl7 = preload("res://scenes/enemy_7.tscn")
const pl8 = preload("res://scenes/enemy_8.tscn")
const pl51 = preload("res://scenes/enemy5_l2.tscn")
const pl31 = preload("res://scenes/enemy3_l2.tscn")
const pl11 = preload("res://scenes/enemy1_l2.tscn")
const pl4 = preload("res://scenes/enemy_4.tscn")
const pl41 = preload("res://scenes/enemy4_l2.tscn")
const GAMEOVER = preload("res://scenes/game_over.tscn")
const VICTORY = preload("res://scenes/Schermata di vittoria1.tscn")
const BOSS = preload("res://scenes/FinalBoss.tscn")
const Enemy_Right = preload("res://scenes/boss_supporter_right.tscn")
const Enemy_Left = preload("res://scenes/boss_supporter_left.tscn")

var deltafine = 0
var ceppo = 0

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
		
		$Timer.start(delay3)
		var enemy4 = pl4.instantiate()
		enemy4.position = position
		get_tree().current_scene.add_child(enemy4)
		
	if DELTA > 25 and DELTA < 30 and $Timer.is_stopped():
		$Timer.start(delay3)
		var enemy2 = pl2.instantiate()
		enemy2.position = position
		get_tree().current_scene.add_child(enemy2)
		
	if DELTA > 38 and DELTA < 48 and $Timer.is_stopped():
		$Timer.start(delay2)
		var enemy8 = pl8.instantiate()
		enemy8.position = position
		get_tree().current_scene.add_child(enemy8)
		
		var enemy41 = pl41.instantiate()
		enemy41.position = position
		get_tree().current_scene.add_child(enemy41)
		
	if DELTA > 55 and DELTA < 57 and $Timer.is_stopped():
		$Timer.start(delay4)
		var boss = BOSS.instantiate()
		boss.position = position
		get_tree().current_scene.add_child(boss)
		print("boss")
	
	if DELTA > 60 and DELTA <63 and $Timer.is_stopped():
		$Timer.start(LateralDelay)
		var Eleft = Enemy_Left.instantiate()
		Eleft.position = position
		get_tree().current_scene.add_child(Eleft)
		var Eright = Enemy_Right.instantiate()
		Eright.position = position
		get_tree().current_scene.add_child(Eright)
	
	if DELTA > 75 and DELTA < 78 and $Timer.is_stopped():
		$Timer.start(LateralDelay)
		var Eleft = Enemy_Left.instantiate()
		Eleft.position = position
		get_tree().current_scene.add_child(Eleft)
		var Eright = Enemy_Right.instantiate()
		Eright.position = position
		get_tree().current_scene.add_child(Eright)
		
		
		
	if Global.life <= 0:
			deltafine += delta
			if deltafine > 1 and ceppo == 0:
				var gameover = GAMEOVER.instantiate()
				get_tree().current_scene.add_child(gameover)
				ceppo = 1
				Global.level  = 4
				
	if Global.score >= 1970:
		deltafine += delta
		if deltafine > 1 and ceppo == 0:
			var victory = VICTORY.instantiate()
			get_tree().current_scene.add_child(victory)
			ceppo = 1
			Global.level  = 4
