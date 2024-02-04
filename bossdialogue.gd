extends RichTextLabel
var dialog = ["Hello, young one.", "I didn’t think you’d arrive this early." ,"It’s sad to see that you don’t like my works. But nobody appreciates what I've done anyway.","Oh, so you're not going to say anything. Not that you had the choice to anyway.","You're just a byproduct of my creation. You know that, right? When I split the world, the powers of balance created you and changed me."," The balance in the world was imperfect. With happiness and sadness, there is jealousy. Jealousy is just a byproduct of value. Value is what makes people ambitious, I guess.","So what do you say? We can rebuild this world together as one again or we can eliminate imbalance forever.",""]
var page = 0
#
signal bossplease

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
		emit_signal("bossplease")
func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)
