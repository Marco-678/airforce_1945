extends ProgressBar

var delay = 0.2

func _process(delta: float) -> void:
	if Global.life < 100:
		$Timer.start(delay)
		if $Timer.is_stopped():
			value = Global.life * 5
