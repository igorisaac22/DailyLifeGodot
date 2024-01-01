extends Node2D



func _on_buy_btn_pressed():
	if PlayerStatus.Status["Money"] >= 5:
		PlayerStatus.Status["Money"] -= 5
		PlayerStatus.Status["HungryValue"] -= 5
		PlayerStatus.Status["SleepValue"] -= 5


func _on_buy_btn_2_pressed():
	if PlayerStatus.Status["Money"] >= 10:
		PlayerStatus.Status["Money"] -= 10
		PlayerStatus.Status["HungryValue"] -= 15
		PlayerStatus.Status["SleepValue"] -= 5


func _on_buy_btn_3_pressed():
	if PlayerStatus.Status["Money"] >= 8:
		PlayerStatus.Status["Money"] -= 8
		PlayerStatus.Status["HungryValue"] -= 5
		PlayerStatus.Status["SleepValue"] -= 15


func _on_buy_btn_4_pressed():
	if PlayerStatus.Status["Money"] >= 3:
		PlayerStatus.Status["Money"] -= 3
		PlayerStatus.Status["HungryValue"] -= 5
		PlayerStatus.Status["SleepValue"] -= 0


func _on_buy_btn_5_pressed():
	if PlayerStatus.Status["Money"] >= 6:
		PlayerStatus.Status["Money"] -= 6
		PlayerStatus.Status["HungryValue"] -= 10
		PlayerStatus.Status["SleepValue"] -= 0


func _on_buy_btn_6_pressed():
	if PlayerStatus.Status["Money"] >= 15:
		PlayerStatus.Status["Money"] -= 15
		PlayerStatus.Status["HungryValue"] -= 25
		PlayerStatus.Status["SleepValue"] -= 0


func _on_close_btn_pressed():
	$".".visible = false
