extends Node2D

func _on_confirm_btn_pressed():
	go_to_hospital_btn_confirm()


func go_to_hospital_btn_confirm():
	PlayerStatus.Status["HungryValue"] = 0
	PlayerStatus.Status["SleepValue"] = 0
	PlayerStatus.Status["Money"] -= 100
	PlayerStatus.Status["Overdrive"] = true
	get_tree().change_scene_to_file("res://Scenes/Locations/hospital_inside.tscn")
