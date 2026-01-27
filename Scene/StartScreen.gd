extends VideoStreamPlayer

@onready var button =$"../Start"
@onready var title = $"../tempTitle"
@onready var level0 =  preload("res://Scene/Level_0.tscn")
@onready var startScene = $"."
@onready var auraScene = $"../Sprite2D"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	auraScene.show()
	startScene.stop()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	button.hide()
	title.hide()
	auraScene.hide()
	startScene.play()
	
	pass # Replace with function body.


func _on_finished() -> void:
	get_tree().change_scene_to_packed(level0)
	pass # Replace with function body.
