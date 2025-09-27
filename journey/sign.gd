extends Area2D

@export var sign_text: String = "Default sign text"

func _on_body_entered(body: Node2D) -> void:
	if body.name == 'Player 1' or body.name == 'Player 2':
		$Panel/Label.text = sign_text
		$Panel.show()
		var label_size = $Panel/Label.get_minimum_size()
		$Panel.custom_minimum_size = label_size
		

func _on_body_exited(body: Node2D) -> void:
	if body.name == 'Player 1' or body.name == 'Player 2':
		$Panel.hide()
