extends Node


func _ready():
	$WorkBtn.visible = false
	$WorkHUD.visible = false
	$OverdriveStatusHUD.visible = false
	$Pharmacy_Store_HUD.visible = false
	$Health_Hospital_Treatment_HUD.visible = false

func _process(delta):
	Can_Work()
	PlayerOverdrive()
	_overdrive_status()



func PlayerOverdrive() -> void:
	if PlayerStatus.Status["HungryValue"] >= 100 or PlayerStatus.Status["SleepValue"] >= 100:
		$OverdriveStatusHUD.visible = true


func Can_Work():
	if PlayerStatus.Work_Status["JobPlace"] == "Hospital":
		$WorkBtn.visible = true
	else:
		$WorkBtn.visible = false
		
func _on_work_btn_pressed():
	$WorkHUD.visible = true

func _overdrive_status():
	if PlayerStatus.Status["Overdrive"] == true:
		$Health_Hospital_Treatment_HUD.visible = true


func _on_pharmacy_btn_pressed():
	$Pharmacy_Store_HUD.visible = true
