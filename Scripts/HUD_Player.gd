extends Control

@onready var Day = $DayCount
@onready var Name = $UI_BarColor/UI_Box_Info/Name
@onready var Money = $UI_BarColor/UI_Box_Info/Money
@onready var TimeHour = $UI_BarColor/UI_Box_Info/TimeHour
@onready var HungryBar = $UI_BarColor/HungryBar
@onready var SleepBar = $UI_BarColor/SleepBar

@onready var IconButton = $UI_BarColor/IconButton

func _ready():
	Name.text = "Name:" + PlayerStatus.Status["PlayerName"]
	Money.text = "Money: $" + str(PlayerStatus.Status["Money"])
	TimeHour.text = "Time: " + str(DayTimeSystem.TimeHour) + ":" + str(DayTimeSystem.TimeMinutes)
	HungryBar.value = PlayerStatus.Status["HungryValue"] 
	SleepBar.value = PlayerStatus.Status["SleepValue"]
	$UI_BarColor/IconTexture.texture = PlayerStatus.Status["Icon"]
	Day.text = "Day " + str(PlayerStatus.Status["Day"])
	
func _process(_delta):
	Name.text = "Name:" + PlayerStatus.Status["PlayerName"]
	Money.text = "Money: $" + str(PlayerStatus.Status["Money"])
	TimeHour.text = "Time: " + str(DayTimeSystem.TimeHour) + ":" + str(DayTimeSystem.TimeMinutes)
	HungryBar.value = PlayerStatus.Status["HungryValue"] 
	SleepBar.value = PlayerStatus.Status["SleepValue"]
	$UI_BarColor/IconTexture.texture = PlayerStatus.Status["Icon"]
	Day.text ="Day " + str(PlayerStatus.Status["Day"])
	
	control_survival_bars_value_when_values_lower_zero()


func _on_icon_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/HUDs/menu_status.tscn")


func control_survival_bars_value_when_values_lower_zero():
	if PlayerStatus.Status["HungryValue"] < 0:
		PlayerStatus.Status["HungryValue"] = 0
	elif  PlayerStatus.Status["SleepValue"] < 0:
		PlayerStatus.Status["SleepValue"] = 0
