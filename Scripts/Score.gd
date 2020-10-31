extends Label

var score = 0

func _on_ScoreTimer_timeout():
	score += 1
	self.set_text(str(score))
	pass
