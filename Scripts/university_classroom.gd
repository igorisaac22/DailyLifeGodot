extends Node

@onready var warningHUD = preload("res://Scenes/HUDs/warning_hud.tscn" ).instantiate()
@onready var overdriveHUD = preload("res://Scenes/HUDs/overdrive_status_hud.tscn").instantiate()
		

func _ready():
	$University_Courses_HUD.visible = false
	$UniversityClassroomBg/StudyBtn.visible = false 
	$BG_HUD_CompleteCourse.visible = false
	
	add_child(warningHUD)
	warningHUD.visible = false
	
	add_child(overdriveHUD)
	overdriveHUD.visible = false
	
	
func _on_courses_btn_pressed():
	$University_Courses_HUD.visible = true
	
func _process(delta):
	acess_course_list_button()
	course_ended()
	UniversityBusinessHours()
	PlayerOverdrive()

	
	
func acess_course_list_button() -> void:
	if PlayerStatus.Course_Status["Studing"] == true:
		$UniversityClassroomBg/CoursesBtn.disabled = true
		$UniversityClassroomBg/StudyBtn.visible = true
		$UniversityClassroomBg/BG_HUD/Course_Info_Label.text = "Course: " + PlayerStatus.Course_Status["CourseName"]
		$UniversityClassroomBg/BG_HUD/Course_Time_Label.text = "Hours Left: " + str(PlayerStatus.Course_Status["CourseHours"])
	else:
		$UniversityClassroomBg/CoursesBtn.disabled = false
		$UniversityClassroomBg/StudyBtn.visible = false 
		
func _on_study_btn_pressed():
	study_btn() 
		
func study_btn() -> void:
	PlayerStatus.Course_Status["CourseHours"] -= 1
	PlayerStatus.Status["HungryValue"] += 5
	PlayerStatus.Status["SleepValue"] += 10
	DayTimeSystem.TimeHour += 1
	
func course_ended() -> void:
	if PlayerStatus.Course_Status["CourseHours"] == 0:
		PlayerStatus.Course_Status["CourseHours"] = -1
		PlayerStatus.Course_Status["Studing"] = false
		$UniversityClassroomBg/BG_HUD/Course_Info_Label.text = "Course: None yet"
		$UniversityClassroomBg/BG_HUD/Course_Time_Label.text = "Hours Left: 0" 
		$BG_HUD_CompleteCourse.visible = true
		$BG_HUD_CompleteCourse/Label.text = "Course " + PlayerStatus.Course_Status["CourseName"] + " complete"
	
func _on_close_btn_pressed():
	PlayerStatus.Status["Graduations"].append(PlayerStatus.Course_Status["CourseName"])
	$BG_HUD_CompleteCourse.visible = false
	print(PlayerStatus.Status["Graduations"])
	
func UniversityBusinessHours() -> void:
	if DayTimeSystem.TimeHour <= 07 or DayTimeSystem.TimeHour >= 17:
		warningHUD.visible = true
		
func PlayerOverdrive() -> void:
	if PlayerStatus.Status["HungryValue"] >= 100 or PlayerStatus.Status["SleepValue"] >= 100:
		overdriveHUD.visible = true
		
