extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Livecounter.livesTwo = 3
	
func _physics_process(delta):
	if Livecounter.livesTwo ==5:
		$"LifeTwo5".show()
	if Livecounter.livesTwo == 4:
		$"LifeTwo4".show()
		$"LifeTwo5".hide()
	if Livecounter.livesTwo == 3:
		$"LifeTwo3".show()
		$"LifeTwo4".hide()	
	if Livecounter.livesTwo == 2:
		$"LifeTwo3".hide()
		$"LifeTwo2".show()
	if Livecounter.livesTwo == 1:
		$"LifeTwo2".hide()
	if Livecounter.livesTwo == 0:
		get_tree().reload_current_scene()
		
		
		
		
		
