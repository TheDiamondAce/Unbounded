extends Node2D

@onready var ghost_of_khan = $"../GhostOfKhan"
var speed = 600
var awatingControls = false	
func _process(delta: float) -> void:
	if ghost_of_khan.awaitingForControls == true:
		position.y += 0
	else:
		position.y += speed*delta
	
func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
