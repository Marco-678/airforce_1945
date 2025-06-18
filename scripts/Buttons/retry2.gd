extends TextureButton



func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/level_2.tscn")
	Global.life = 25
	Global.score = 0
