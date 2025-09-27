extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(_CollisionShape2D):
	print("You Died Lol")
	timer.start()


func _on_timer_timeout():
	get_tree().reload_current_scene()
