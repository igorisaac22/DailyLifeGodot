extends Node

func _ready():
	$HUD_Info_Version.visible = false
	$Instructions_HUD.visible = false
	$NotesVersion_HUD.visible = false
	
func _on_start_btn_pressed():
	$HUD_Info_Version.visible = true


func _on_instructions_btn_pressed():
	$Instructions_HUD.visible = true

func _on_quit_btn_pressed():
	get_tree().quit()


func _on_notes_btn_pressed():
	$NotesVersion_HUD.visible = true
