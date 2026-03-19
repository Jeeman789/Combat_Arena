extends CharacterBody2D

const speed = 100
var current_dir = "none"

func _ready() -> void:
	$AnimatedSprite2D.play("front_idle")

func _physics_process(delta: float) -> void:
	player_movement(delta)

func player_movement(delta):
	if Input.is_action_pressed("ui_right"):
		current_dir = "right"
		play_anim()
		velocity.x = speed
		velocity.y = 0
	elif Input.is_action_pressed("ui_left"):
		current_dir = "left"
		play_anim()
		velocity.x = -speed
		velocity.y = 0
	elif Input.is_action_pressed("ui_up"):
		current_dir = "up"
		play_anim()
		velocity.x = 0
		velocity.y = -speed
	elif Input.is_action_pressed("ui_down"):
		current_dir = "down"
		play_anim()
		velocity.x = 0
		velocity.y = speed
	else:
		velocity.x = 0
		velocity.y = 0
	
	move_and_slide()
		

func play_anim():
	var direction = current_dir
	var anim = $AnimatedSprite2D
	
	if direction == "left":
		anim.flip_h = true
		
	
