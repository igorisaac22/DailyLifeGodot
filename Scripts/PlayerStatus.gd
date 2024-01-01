extends Node

var Status = {
	"PlayerName" = "",
	"Money" = 100,
	"TimeHour" = 0,
	"HungryValue" = 0,
	"SleepValue" = 0,
	"Icon" = preload("res://icon.svg"),
	"Day" = 1,
	
	"Job" = "none",
	"Graduations" = [],
	
	"MoneyWon" = 0,
	"MoneySpend" = 0,
	"DaysPassed" = 0,
	"MoneyInvest" = 0,
	"SleepTimes" = 0,
	"EatTimes" = 0,
	"HospitalTimes" = 0,
	"Overdrive" = false
}

var Info = {
	"RentHouse" = false,
	"RentHouseDaysLeft" = 0
}

var Course_Status = {
	"CourseHours" = -1,
	"CourseName" = "",
	"Studing" = false
}

var Work_Status = {
	"JobName" = "",
	"JobPlace" = "",
	"Salary" = 0
}
