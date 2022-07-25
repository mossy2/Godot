extends KinematicBody2D

export (int) var speed = 120
export (int) var jump_speed = -180
export (int) var gravity = 400
export (int) var slide_speed = 400

var velocity = Vector2.ZERO

export (float) var friction = 10
export (float) var acceleration = 25

enum state {IDLE, RUNNING, PUSHING, ROLLING, JUMP, FALL, ATTACK}

onready var player_state = state.IDLE

func _ready():
	$AnimationPlayer.play("idle")
	pass

func update_animation(anim):
	$AnimationPlayer.play(anim)
	
func handle_state(state):
	pass
	
func get_input():
	var dir = Input.get_action_strentgh("right") - Input.get_input_strength("left")
	if dir != 0:
		
	
func _physics_process(delta):
	get_input()
