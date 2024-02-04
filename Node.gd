extends Node

func _ready():
	$Panel.hide()
	connect("_on_npc_body_entered",self,"_on_player_body_entered")

func _on_npc_body_entered(body):
	print("sldjflskdf")
	if _on_npc_body_entered(true):
		$Panel.show()
	else:
		$Panel.hide()


