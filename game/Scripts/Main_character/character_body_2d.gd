extends CharacterBody2D


const SPEED = 250
@onready var animations = $AnimationPlayer

func updateAnimation():
	if velocity.length() == 0:
		animations.stop()
	else:
		var direction = "Down"
		if velocity.x < 0: direction = "Left"
		elif velocity.x > 0: direction = "Right"
		elif velocity.y < 0: direction = "Up"
	
		animations.play("walk" + direction)

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
	else:
		velocity.x = 0
	if Input.is_action_pressed("ui_down"):
		velocity.y = SPEED
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -SPEED
	else:
		velocity.y = 0

	move_and_slide()
	updateAnimation()
