extends CharacterBody2D




func _physics_process(delta: float) -> void:
	var SPEED = Speeds.speedTwo
	var JUMP_VELOCITY = Jumps.jumpTwo
	scale = Vector2(Sizes.sizeTwo, Sizes.sizeTwo)
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("two_up") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("two_left", "two_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if Input.is_action_just_pressed("two_give_life"):
		Livecounter.livesTwo -= 1
		Livecounter.livesOne += 1
	if Input.is_action_just_pressed("two_give_speed") and Speeds.speedTwo > 0:
		Speeds.speedOne += 50
		Speeds.speedTwo -= 50
	if Input.is_action_just_pressed("two_give_jump") and abs(Jumps.jumpTwo) > 0:
		Jumps.jumpOne -= 100
		Jumps.jumpTwo += 100
	if Input.is_action_just_pressed("two_give_size") and Sizes.sizeTwo > 0.3:
		Sizes.sizeOne += 0.1
		Sizes.sizeTwo -= 0.1

	move_and_slide()
