extends Node

export(String) var level

func _ready():
	pass

func _on_ExitTimer_timeout():
	get_tree().change_scene(level)
