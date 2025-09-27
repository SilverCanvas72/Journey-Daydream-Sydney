extends Label

func _physics_process(delta):
	$".".text = 'Jump Height: %s' % [str(abs(Jumps.jumpOne))]
