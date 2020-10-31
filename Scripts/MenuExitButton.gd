extends Button

export(String) var scene_to_load

func _pressed():
	get_tree().quit()
