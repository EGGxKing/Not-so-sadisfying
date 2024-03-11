extends Control

var played = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $".".visible == true and played == false :
		$AudioStreamPlayer.play(0.0)
		played= true 
	
func _on_button_mouse_exited():
	$ArrwoHovored.visible = false


func _on_button_mouse_entered():
	$ArrwoHovored.visible = true


func _on_button_pressed():
	if (get_tree().get_current_scene().name == "Scene Egg"):
		get_tree().change_scene_to_file("res://Scenes/scene_puzzle.tscn")
	elif (get_tree().get_current_scene().name == "scene_puzzle"):
		get_tree().change_scene_to_file("res://Scenes/scene_color_circle.tscn")
	elif (get_tree().get_current_scene().name == "scene_coloring"):
		get_tree().change_scene_to_file("res://Scenes/scene_hammer.tscn")
	elif (get_tree().get_current_scene().name == "Scene_Hammer"):
		get_tree().change_scene_to_file("res://Scenes/scene_balls.tscn")
	elif (get_tree().get_current_scene().name == "scene_balls"):
		get_tree().change_scene_to_file("res://Scenes/scene_hangers.tscn")
	elif (get_tree().get_current_scene().name == "scene_hangers"):
		get_tree().change_scene_to_file("res://Scenes/scene_stripes.tscn")
	elif (get_tree().get_current_scene().name == "scene_stripes"):
		$"../../Opcions/Scene select".visible = true
		$"../../Opcions/Opcions Buttons".visible = false
		$"..".visible = false
		$"../../Opcions".visible = true
