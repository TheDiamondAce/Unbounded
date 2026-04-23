extends Node2D

@export var arrow_scene: PackedScene
@export_range(0,500) var amountOfArrows: int
@onready var ghost_of_khan = $"../GhostOfKhan"

func start_attack():
	for i in range(amountOfArrows):
		if ghost_of_khan.awaitingForControls == false:
			var new_arrow = arrow_scene.instantiate()
		
			var random_x = randf_range(-500,500)

			new_arrow.position = Vector2(random_x,-100)
		
			get_tree().current_scene.add_child(new_arrow)
		
			await get_tree().create_timer(0.2).timeout
		else:
			await ghost_of_khan.awaitingForControls == true
		
