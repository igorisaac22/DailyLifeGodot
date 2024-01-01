extends Node


func _on_enter_btn_pressed():
	Coffee_Business_Hour()
	

func Coffee_Business_Hour() -> void:
		get_tree().change_scene_to_file("res://Scenes/Locations/restaurant_coffee_inside.tscn")
