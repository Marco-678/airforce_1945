extends Label

func _process(delta: float) -> void:
	if Global.life >= 0:
		self.text = str(Global.life)
	else:
		self.text = "0"
