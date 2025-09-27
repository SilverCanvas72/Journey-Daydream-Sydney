extends Node2D



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == 'Player 1':
		Livecounter.livesOne -= 1
	elif body.name == 'Player 2':
		Livecounter.livesTwo -= 1
