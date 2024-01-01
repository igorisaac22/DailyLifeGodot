extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	$WarningHUD.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	JobAgencyBusinessHours()
	
func JobAgencyBusinessHours() -> void:
	if DayTimeSystem.TimeHour <= 07 or DayTimeSystem.TimeHour >= 13:
		$WarningHUD.visible = true


func _on_enter_btn_pressed():
	get_tree().change_scene_to_file("res://Scenes/Locations/job_agency_inside.tscn")
