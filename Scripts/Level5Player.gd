extends KinematicBody2D

var score

func _process(delta):
	_look_at_mouse()
	_move_to_mouse()
	pass

func _look_at_mouse():
	look_at(get_global_mouse_position())
	pass

func _move_to_mouse():
	var direction = get_global_mouse_position() - position
	move_and_slide(direction)
	pass

func game_over():
	$ScoreTimer.stop()
	$MobTimer.stop()

func new_game():
	score = 0
	$Player.start($StartPosition.position)
	$StartTimer.start()

func _on_EnemyDetector_area_entered(area) -> void:
	queue_free()
	get_tree().change_scene("res://Scenes/YouDiedlevel5.tscn")
	pass # Replace with function body.
