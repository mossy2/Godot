extends Camera2D

var target = null
var zoomed = false
var center = Vector2.ZERO


func _ready():
	center = get_viewport_rect().size/2

func _process(delta):
	if Input.is_action_just_pressed("zoomed"):
		if zoomed:
			target = center
			zoomed = false
		else:
			target = owner.get_node("Player").gloal_position
			zoomed = true

	if zoomed:
		zoom = zoom.move_toward(target, .03)
		position = position.move_toward(target,80)
		
