extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	Can_Work()
	
	$WorkHUD.visible = false
	$Coffee_Menu_HUD.visible = false
	$OverdriveStatusHUD.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	PlayerOverdrive()


func Can_Work() -> void:
	if PlayerStatus.Work_Status["JobPlace"] == "Restaurant":
		$WorkBtn.visible = true
	else:
		$WorkBtn.visible = false
		

func _on_work_btn_pressed():
	$WorkHUD.visible = true


func _on_eat_btn_pressed():
	$Coffee_Menu_HUD.visible = true
	
func PlayerOverdrive() -> void:
	if PlayerStatus.Status["HungryValue"] >= 100 or PlayerStatus.Status["SleepValue"] >= 100:
		$OverdriveStatusHUD.visible = true
