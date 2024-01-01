extends Control

func _ready():
	$Text.text = "Do you want a rent this house? \n
	$100/ Week"
	
func _on_confirm_btn_pressed():
	if PlayerStatus.Status["Money"] >= 100:
		Rent_House()
	else:
		$Text.text = "You don't have a money to rent a house"
		$ConfirmBtn.visible = false
		

func Rent_House():
	PlayerStatus.Info["RentHouse"] = true
	PlayerStatus.Info["RentHouseDaysLeft"] = 7
	PlayerStatus.Status["Money"] -= 100
	visible = false

func _on_cancel_btn_pressed():
	visible = false
	$Text.text = "Do you want a rent this house? \n
	$100/ Week"

