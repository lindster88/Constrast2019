extends RichTextLabel
var dialog = ["You got a key!",""]
var page = 0
#
signal lightkeyplease

func _ready():
	set_bbcode(dialog[page])
	set_visible_characters(0)
	set_process_input(true)

func _input(event): 
	
	if event is InputEventKey and event.get_scancode() == KEY_SPACE && event.is_pressed(): 
		if get_visible_characters()> get_total_character_count():
			if page < dialog.size()-1:
				page+=1
				set_bbcode(dialog[page])
				set_visible_characters(0)
		else:
			set_visible_characters(get_total_character_count())
	
	if page == dialog.size()-1:
		emit_signal("lightkeyplease")
func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)