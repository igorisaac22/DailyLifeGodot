extends Node

@onready var warningHUD = preload("res://Scenes/HUDs/warning_hud.tscn")


func _process(delta):
	UniversityBusinessHours()

func UniversityBusinessHours() -> void:
	if DayTimeSystem.TimeHour <= 07 or DayTimeSystem.TimeHour >= 17:
		warningHUD.visible = true
		
		

func _on_enter_class_room_btn_pressed():
	get_tree().change_scene_to_file("res://Scenes/Locations/university_classroom.tscn")
