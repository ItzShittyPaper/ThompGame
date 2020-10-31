extends Button

export(String) var scene_to_load

func _pressed():
	OS.window_fullscreen = !OS.window_fullscreen
