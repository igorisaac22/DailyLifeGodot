extends Node

var DaysToPay = 7

func _ready():
	$HUD_Confirm_Rent_House.visible = false
	
func _process(_delta):
	if $HUD_Confirm_Rent_House.visible == false:
		$EnterHouseBtn.visible = true	


func verifyAcess() -> void:
	if PlayerStatus.Info["RentHouse"] == true:
		get_tree().change_scene_to_file("res://Scenes/Locations/rent_house_inside.tscn")
	else:
		$HUD_Confirm_Rent_House.visible = true
		$EnterHouseBtn.visible = false


func _on_enter_house_btn_pressed():
	verifyAcess()
	
