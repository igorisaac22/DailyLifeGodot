extends Control

func _on_confirm_btn_pressed():
	get_tree().change_scene_to_file("res://Scenes/HUDs/character_creation_menu_hud.tscn")
