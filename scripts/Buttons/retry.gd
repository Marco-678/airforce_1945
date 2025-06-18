extends TextureButton



func _on_pressed() -> void:
	
	
	if Global.level == 1:
		get_tree().change_scene_to_file("res://scenes/Levels/level_1 (real) .tscn")
	elif Global.level == 2:
		get_tree().change_scene_to_file("res://scenes/Levels/level_2.tscn")
	elif Global.level == 3:
		get_tree().change_scene_to_file("res://scenes/Levels/level_3.tscn")
	elif Global.level == 4:
		get_tree().change_scene_to_file("res://scenes/Levels/level_4.tscn")
	
	
	Global.life = 25
	Global.score = 0
