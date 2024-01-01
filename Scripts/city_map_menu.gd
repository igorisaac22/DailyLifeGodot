extends Node



func _on_suburbian_btn_pressed():
	get_tree().change_scene_to_file("res://Scenes/Locations/neighboour_hood.tscn")


func _on_hospital_btn_pressed():
	get_tree().change_scene_to_file("res://Scenes/Locations/hospital_front.tscn")


func _on_university_btn_pressed():
	get_tree().change_scene_to_file("res://Scenes/Locations/university_front.tscn")


func _on_coffee_restaurant_btn_pressed():
	get_tree().change_scene_to_file("res://Scenes/Locations/restaurant_coffee_front.tscn")


func _on_job_office_btn_pressed():
	get_tree().change_scene_to_file("res://Scenes/Locations/job_agency.tscn")
