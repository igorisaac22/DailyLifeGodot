extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	$Job_Applies_List_HUD.visible = false


func _on_job_list_btn_pressed():
	$Job_Applies_List_HUD.visible = true
