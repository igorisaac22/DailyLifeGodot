extends Control

var job_list =[
	#Restaurant
	"Waiter","Barman","Kitchen Assistant","Cook","Restaurant Janitor","Chief Executive","Manager","Sommelier",
	#Hospital
	"Hospital Janitor", "Recepcionist", "Kitchen Assistant Hospital", "Ambulance Driver", "Doctor", "Nurse", "Nutritionist", "Dentist", "Psychologist","Hospital Director"
	#FastFood
]

var jobs = {
	#Restaurant Jobs and Information 
	"Waiter" = {
		"Requirements" = "none",
		"Salary" = 12,
		"Location" = "Restaurant"
	},
	"Barman" = {
		"Requirements" = "none",
		"Salary" = 13,
		"Location" = "Restaurant"
	},
	"Kitchen Assistant" = {
		"Requirements" = "none",
		"Salary" = 10,
		"Location" = "Restaurant"
	},
	"Cook" = {
		"Requirements" = "Kitchen Assistant by 20 Hours",
		"Salary" = 14,
		"Location" = "Restaurant"
	},
	"Restaurant Janitor" = {
		"Requirements" = "none",
		"Salary" = 10,
		"Location" = "Restaurant"
	},
	"Chief Executive" = {
		"Requirements" = "Superior Gastronomy",
		"Salary" = 30,
		"Location" = "Restaurant"
	},
	"Manager" = {
		"Requirements" = "Superior Administration",
		"Salary" = 20,
		"Location" = "Restaurant"
	},
	"Sommelier" = {
		"Requirements" = "Superior Gastronomy",
		"Salary" = 18,
		"Location" = "Restaurant"
	},
	#Hospital
	"Hospital Janitor" = {
		"Requirements" = "none",
		"Salary" = 11,
		"Location" = "Hospital"
	},
	"Recepcionist" = {
		"Requirements" = "none",
		"Salary" = 12,
		"Location" = "Hospital"
	},
	"Kitchen Assistant Hospital" = {
		"Requirements" = "none",
		"Salary" = 12,
		"Location" = "Hospital"
	},
	"Ambulance Driver" = {
		"Requirements" = "none",
		"Salary" = 13,
		"Location" = "Hospital"
	},
	"Doctor" = {
		"Requirements" = "Superior Medicine",
		"Salary" = 50,
		"Location" = "Hospital"
	},
	"Nurse" = {
		"Requirements" = "Superior Nurse",
		"Salary" = 35,
		"Location" = "Hospital"
	},
	"Nutritionist" = {
		"Requirements" = "Superior Nutritionist",
		"Salary" = 40,
		"Location" = "Hospital"
	},
	"Dentist" = {
		"Requirements" = " Superior Dentist",
		"Salary" = 40,
		"Location" = "Hospital"
	},
	"Psychologist" = {
		"Requirements" = "Superior Psychologist",
		"Salary" = 28,
		"Location" = "Hospital"
	},
	"Hospital Director" = {
		"Requirements" = "Esp Adm Health",
		"Salary" = 60,
		"Location" = "Hospital"
	}
}

var job_list_choosed = []

var counts = 0

func _ready():
	random_choose_job_list()
	jobs_in_the_HUD()	
	
	$BG/BG_Warning.visible = false
	
func random_choose_job_list():
	while counts < 4:
		job_list_choosed.push_back(job_list.pick_random())
		counts += 1
			

func jobs_in_the_HUD():
	#for each in BG inside GridContainer
	#BG1
	$BG/GridContainer/BG1/JobName.text = job_list_choosed[0]
	$BG/GridContainer/BG1/Label.text = "Requirements: " + jobs[job_list_choosed[0]]["Requirements"]+ "\n" + " Salary per Hour: " + str(jobs[job_list_choosed[0]]["Salary"])+ "\n" + " Location: " + jobs[job_list_choosed[0]]["Location"]+ "\n" 
	#BG2
	$BG/GridContainer/BG2/JobName.text = job_list_choosed[1]
	$BG/GridContainer/BG2/Label.text = "Requirements: " + jobs[job_list_choosed[1]]["Requirements"]+ "\n" + " Salary per Hour: " + str(jobs[job_list_choosed[1]]["Salary"])+ "\n" + " Location: " + jobs[job_list_choosed[1]]["Location"]+ "\n" 
	#BG3
	$BG/GridContainer/BG3/JobName.text = job_list_choosed[2]
	$BG/GridContainer/BG3/Label.text = "Requirements: " + jobs[job_list_choosed[2]]["Requirements"]+ "\n" + " Salary per Hour: " + str(jobs[job_list_choosed[2]]["Salary"])+ "\n" + " Location: " + jobs[job_list_choosed[2]]["Location"]+ "\n" 
	#BG4
	$BG/GridContainer/BG4/JobName.text = job_list_choosed[3]
	$BG/GridContainer/BG4/Label.text = "Requirements: " + jobs[job_list_choosed[3]]["Requirements"]+ "\n" + " Salary per Hour: " + str(jobs[job_list_choosed[3]]["Salary"])+ "\n" + " Location: " + jobs[job_list_choosed[3]]["Location"]+ "\n" 
	


func _on_hire_btn_1_pressed():
	#The parameter in number equals a value in index to acess values of arrays for function can_hire()
	can_hire(0)
	
func _on_hire_btn_2_pressed():
	can_hire(1)

func _on_hire_btn_3_pressed():
	can_hire(2)

func _on_hire_btn_4_pressed():
	can_hire(3)

	

func can_hire(indexValue):
	if jobs[job_list_choosed[indexValue]]["Requirements"] == "none":
		PlayerStatus.Work_Status["JobName"] = job_list_choosed[indexValue]
		PlayerStatus.Work_Status["JobPlace"] = jobs[job_list_choosed[indexValue]]["Location"]
		PlayerStatus.Work_Status["Salary"] = jobs[job_list_choosed[indexValue]]["Salary"]
		print(PlayerStatus.Work_Status)
		$BG/BG_Warning/Label.text = "You hired with " + job_list_choosed[indexValue]
		$BG/BG_Warning.visible = true
		
		
	elif PlayerStatus.Status["Graduations"].has( jobs[job_list_choosed[indexValue]]["Requirements"]):
		PlayerStatus.Work_Status["JobName"] = job_list_choosed[indexValue]
		PlayerStatus.Work_Status["JobPlace"] = jobs[job_list_choosed[indexValue]]["Location"]
		PlayerStatus.Work_Status["Salary"] = jobs[job_list_choosed[indexValue]]["Salary"]
		print(PlayerStatus.Work_Status)
		$BG/BG_Warning/Label.text = "You hired with " + job_list_choosed[indexValue]
		$BG/BG_Warning.visible = true
		
	else:
		$BG/BG_Warning/Label.text = "You need a Graduation \n or Especialization to hire this job"
		$BG/BG_Warning.visible = true
		


func _on_button_pressed():
	$BG/BG_Warning.visible = false


func _on_close_btn_pressed():
	$".".visible = false
