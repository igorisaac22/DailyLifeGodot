extends Control

func _on_buy_btn_pressed():
	if PlayerStatus.Status["Money"] >= 30:
		PlayerStatus.Status["Money"] -= 30
		PlayerStatus.Status["SleepValue"] -= 40


func _on_buy_btn_2_pressed():
	if PlayerStatus.Status["Money"] >= 70:
		PlayerStatus.Status["Money"] -= 70
		PlayerStatus.Status["SleepValue"] -= 80


func _on_buy_btn_3_pressed():
	if PlayerStatus.Status["Money"] >= 25:
		PlayerStatus.Status["Money"] -= 25
		PlayerStatus.Status["HungryValue"] -= 40


func _on_buy_btn_4_pressed():
	if PlayerStatus.Status["Money"] >= 60:
		PlayerStatus.Status["Money"] -= 60
		PlayerStatus.Status["HungryValue"] -= 80


func _on_close_btn_pressed():
	$".".visible = false
