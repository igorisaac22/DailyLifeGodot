extends Control



func _on_button_pressed():
	PlayerStatus.Status["Overdrive"] = false
	$".".visible = false
