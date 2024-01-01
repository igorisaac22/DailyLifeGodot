extends Control

@onready var InputText = $BG/TextEdit

var PlayerIconHUD


func _ready():
	$BG/Label2.visible = false
	
func verify_character_creation_progress():
	var CharacterName = InputText.text
	if CharacterName.length() < 3 or CharacterName.length() >= 15:
		$BG/Label2.visible = true
	else:
		if PlayerIconHUD == "Male":	
			PlayerStatus.Status["Icon"] = preload("res://Icons/MaleIcon.png")
		else:
			PlayerStatus.Status["Icon"] = preload("res://Icons/FemaleIcon.png")
		PlayerStatus.Status["PlayerName"] = CharacterName
		get_tree().change_scene_to_file("res://Scenes/Locations/city_map_menu.tscn")

func _on_confirm_btn_pressed():
	verify_character_creation_progress()


func _on_male_icon_btn_toogle_toggled(button_pressed):
	if button_pressed == true:
		PlayerIconHUD = "Male"
		print(PlayerIconHUD)
	else:
		print("none")
		PlayerIconHUD = ""


func _on_female_icon_btn_toogle_toggled(button_pressed):
	if button_pressed == true:
		PlayerIconHUD = "Female"
		print("female")
	else:
		print("none")
		PlayerIconHUD = ""
