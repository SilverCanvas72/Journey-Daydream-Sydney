extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Livecounter.livesOne = 3
	
func _physics_process(delta):
	if Livecounter.livesOne ==5:
		$"LifeOne 5".show()
	if Livecounter.livesOne == 4:
		$"LifeOne 4".show()
		$"LifeOne 5".hide()
	if Livecounter.livesOne == 3:
		$"LifeOne 3".show()
		$"LifeOne 4".hide()	
		
	if Livecounter.livesOne == 2:
		$"LifeOne 3".hide()
		$"LifeOne 2".show()
	if Livecounter.livesOne == 1:
		$"LifeOne 2".hide()
	if Livecounter.livesOne == 0:
		get_tree().reload_current_scene()
		
		
