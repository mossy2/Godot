extends Node2D


func _ready():
	$AnimationPlayer.play("Spin")
	
func _process(delta):
	$Path2D/PathFollow2D.offset += 50 * delta
