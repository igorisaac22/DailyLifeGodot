extends Node

var Day = 1
var TimeHour = 08
var TimeMinutes = 00

func _process(_delta):
	ChangeDay()
	ChangeHour()
	
func ChangeDay():
	if TimeHour >= 24:
		Day += 1
		TimeHour = 00
		TimeMinutes = 00
		PlayerStatus.Status["Day"] = Day
		
func ChangeHour():
	if TimeMinutes > 59:
		TimeHour += 1
		TimeMinutes = 00
		
func RentHouseDaysLeft():
	pass
