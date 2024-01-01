extends Control


func _on_adm_buy_btn_pressed():
	if PlayerStatus.Status["Money"] >= 600:
		PlayerStatus.Status["Money"] -= 600
		PlayerStatus.Course_Status["Studing"] = true
		PlayerStatus.Course_Status["CourseName"] = "Superior Administration"
		PlayerStatus.Course_Status["CourseHours"] = 50
		visible = false
	else:
		$BG_Color/BG_Color.visible = true
		$BG_Color/BG_Color/Label.text = "You don't have a money"
		$BG_Color/BG_Color/Timer.start()
		$BG_Color/BG_Color/Timer.wait_time = 2
		


func _on_esp_adm_buy_btn_pressed():
	var index = PlayerStatus.Status["Graduations"].find("Administration")
	if PlayerStatus.Status["Money"] >= 200 and index != -1:
		PlayerStatus.Status["Money"] -= 200
		PlayerStatus.Course_Status["Studing"] = true
		PlayerStatus.Course_Status["CourseName"] = "Esp Adm Health"
		PlayerStatus.Course_Status["CourseHours"] = 20
		visible = false
	else:
		$BG_Color/BG_Color.visible = true
		$BG_Color/BG_Color/Label.text = "You need a Adm Graduation \n to make this especialization"
		$BG_Color/BG_Color/Timer.start()
		$BG_Color/BG_Color/Timer.wait_time = 2



func _on_gas_buy_btn_pressed():
	if PlayerStatus.Status["Money"] >= 350:
		PlayerStatus.Status["Money"] -= 350
		PlayerStatus.Course_Status["Studing"] = true
		PlayerStatus.Course_Status["CourseName"] = "Superior Gastronomy"
		PlayerStatus.Course_Status["CourseHours"] = 25
		visible = false
	else:
		$BG_Color/BG_Color.visible = true
		$BG_Color/BG_Color/Label.text = "You don't have a money"
		$BG_Color/BG_Color/Timer.start()
		$BG_Color/BG_Color/Timer.wait_time = 2


func _on_med_buy_btn_pressed():
	if PlayerStatus.Status["Money"] >= 650:
		PlayerStatus.Status["Money"] -= 650
		PlayerStatus.Course_Status["Studing"] = true
		PlayerStatus.Course_Status["CourseName"] = "Superior Medicine"
		PlayerStatus.Course_Status["CourseHours"] = 60
		visible = false
	else:
		$BG_Color/BG_Color.visible = true
		$BG_Color/BG_Color/Label.text = "You don't have a money"
		$BG_Color/BG_Color/Timer.start()
		$BG_Color/BG_Color/Timer.wait_time = 2


func _on_enf_buy_btn_pressed():
	if PlayerStatus.Status["Money"] >= 550:
		PlayerStatus.Status["Money"] -= 550
		PlayerStatus.Course_Status["Studing"] = true
		PlayerStatus.Course_Status["CourseName"] = "Superior Nurse"
		PlayerStatus.Course_Status["CourseHours"] = 45
		visible = false
	else:
		$BG_Color/BG_Color.visible = true
		$BG_Color/BG_Color/Label.text = "You don't have a money"
		$BG_Color/BG_Color/Timer.start()
		$BG_Color/BG_Color/Timer.wait_time = 2


func _on_ntr_buy_btn_pressed():
	if PlayerStatus.Status["Money"] >= 300:
		PlayerStatus.Status["Money"] -= 300
		PlayerStatus.Course_Status["Studing"] = true
		PlayerStatus.Course_Status["CourseName"] = "Superior Nutritionist"
		PlayerStatus.Course_Status["CourseHours"] = 35
		visible = false
	else:
		$BG_Color/BG_Color.visible = true
		$BG_Color/BG_Color/Label.text = "You don't have a money"
		$BG_Color/BG_Color/Timer.start()
		$BG_Color/BG_Color/Timer.wait_time = 2


func _on_odt_buy_btn_pressed():
	if PlayerStatus.Status["Money"] >= 300:
		PlayerStatus.Status["Money"] -= 300
		PlayerStatus.Course_Status["Studing"] = true
		PlayerStatus.Course_Status["CourseName"] = "Superior Dentist"
		PlayerStatus.Course_Status["CourseHours"] = 35
		visible = false
	else:
		$BG_Color/BG_Color.visible = true
		$BG_Color/BG_Color/Label.text = "You don't have a money"
		$BG_Color/BG_Color/Timer.start()
		$BG_Color/BG_Color/Timer.wait_time = 2


func _on_psy_buy_btn_pressed():
	if PlayerStatus.Status["Money"] >= 300:
		PlayerStatus.Status["Money"] -= 300
		PlayerStatus.Course_Status["Studing"] = true
		PlayerStatus.Course_Status["CourseName"] = "Superior Psychologist"
		PlayerStatus.Course_Status["CourseHours"] = 35
		visible = false
	else:
		$BG_Color/BG_Color.visible = true
		$BG_Color/BG_Color/Label.text = "You don't have a money"
		$BG_Color/BG_Color/Timer.start()
		$BG_Color/BG_Color/Timer.wait_time = 2


func _on_close_btn_pressed():
	visible = false


func _on_timer_timeout():
	$BG_Color/BG_Color.visible = false
