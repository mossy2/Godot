extends Node2D
export (int) var follow_speed = 50

func _ready():
	$AnimationPlayer.play("Spin")
	
func _process(delta):
	$Path2D/PathFollow2D.offset += follow_speed * delta



func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		SoundPlayer.play_sound_effect("dead")
		print("Player dead")
		if GameStats.check_reset() == false:
			body.global_position = GameStats.get_spawn().global_position
