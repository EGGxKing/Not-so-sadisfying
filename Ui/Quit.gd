extends Control


func _on_button_mouse_exited():
	$BarHobored.visible = false


func _on_button_mouse_entered():
	$BarHobored.visible = true


func _on_button_button_down():
	get_tree().quit()
