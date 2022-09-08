extends Area2D

func _ready():
	$AnimationPlayer.play("CheckPoint")
	
func _process(delta):
	if GameStats.get_spawn() != self:
		$AnimationPlayer.play("CheckPoint")
	


func _on_SavePoint_body_entered(body):
	if body.is_in_group("Player"):
		GameStats.set_spawn(self)
		$AnimationPlayer.play("Saved")
