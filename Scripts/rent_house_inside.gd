extends Node

@onready var overdriveHUD = preload("res://Scenes/HUDs/overdrive_status_hud.tscn").instantiate()


func _ready():
	$Label_Info.text = "Rent Days Left: " + str(PlayerStatus.Info["RentHouseDaysLeft"])
	
	add_child(overdriveHUD)
	overdriveHUD.visible = false
	
func _process(_delta):
	$Label_Info.text = "Rent Days Left: " + str(PlayerStatus.Info["RentHouseDaysLeft"])
	
	
func sleep_time() -> void:
	DayTimeSystem.TimeHour += 1
	PlayerStatus.Status["SleepValue"] -= 10
	PlayerStatus.Status["HungryValue"] += 5
	
func PlayerOverdrive() -> void:
	if PlayerStatus.Status["HungryValue"] >= 100 or PlayerStatus.Status["SleepValue"] >= 100:
		overdriveHUD.visible = true


func _on_sleeping_btn_pressed():
	sleep_time()

func _on_back_btn_pressed():
	get_tree().change_scene_to_file("res://Scenes/Locations/neighboour_hood.tscn")
