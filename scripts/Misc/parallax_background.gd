extends ParallaxBackground

func _process(delta: float) -> void:
	$SpaceLayer.motion_offset.y += 150 * delta
