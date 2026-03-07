extends CharacterBody2D

const speed = 100
current_dir = ["none", "none"]

func _ready() -> void:
	$AnimatedSprite2D.play("front_idle")

func _physics_process(delta: float) -> void:
	player_movement(delta)

func player_movement(delta):
	
		
