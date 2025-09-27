extends Label

func _physics_process(delta):
	$".".text = 'SPEED: %s' % [str(Speeds.speedTwo)]
