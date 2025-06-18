extends ProgressBar

func _process(delta: float) -> void:
	value = Global.life * 10 / 3
