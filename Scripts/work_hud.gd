extends Node2D


func _ready():
	$BG/WorkNameTitle.text = PlayerStatus.Work_Status["JobName"]
	$BG/SalaryDescriptionTxt.text = "Salary per Hour: $" + str(PlayerStatus.Work_Status["Salary"])


func _on_work_btn_pressed():
	DayTimeSystem.TimeHour += 1
	PlayerStatus.Status["Money"] += PlayerStatus.Work_Status["Salary"]
	PlayerStatus.Status["HungryValue"] += 5
	PlayerStatus.Status["SleepValue"] += 3


func _on_close_btn_pressed():
	$".".visible = false
