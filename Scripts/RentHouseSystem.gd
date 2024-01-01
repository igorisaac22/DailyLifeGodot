extends Node


func _process(_delta):
	RentDayOver()
	ChangeRentDay()
	
		
func ChangeRentDay():
	if PlayerStatus.Info["RentHouse"] == true and DayTimeSystem.TimeHour >= 24:
		PlayerStatus.Info["RentHouseDaysLeft"] -= 1 
		
func RentDayOver():
	if PlayerStatus.Info["RentHouseDaysLeft"] < 1:
		PlayerStatus.Info["RentHouse"] = false
