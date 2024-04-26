extends MarginContainer

@onready var _hovered_sfx : AudioStreamPlayer = $Hovered
@onready var _pressed_sfx : AudioStreamPlayer = $Pressed



func _exit_tree():
	# in case of quiting while paused
	get_tree().paused = false

func pause(show_pause_menu : bool = false):
	if get_tree().paused: return
	
	get_tree().paused = true
	if show_pause_menu:
		show()

func unpause():
	if get_tree().paused == false: return
	
	get_tree().paused = false
	hide()

func _on_resume_pressed():
	_pressed_sfx.play()
	unpause()

func _on_restart_pressed():
	_pressed_sfx.play()
	SceneManager.restart_scene()

func _on_quit_pressed():
	_pressed_sfx.play()
	# main menu
	SceneManager.change_scene("res://Scenes/Game/main_menu.tscn")

func _on_mouse_entered():
	_hovered_sfx.play()
