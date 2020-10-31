extends KinematicBody2D

export var move_speed = 100

func _process(delta):
	_look_at_mouse()
	_move_to_mouse()
	pass

func _look_at_mouse():
	look_at(get_global_mouse_position())
	pass

func _move_to_mouse():
	var direction = get_global_mouse_position() - position
	var normalized_direction = direction.normalized()
	move_and_slide(normalized_direction * move_speed)
	pass
