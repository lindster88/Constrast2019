extends Node
signal _on_npc1_body_entered
onready var body = $npc/npc1
onready var lightkey = $lightkey/lightkeybody
onready var darkdoor = $darkdoor/darkdoorarea
onready var boss = $boss/Area2D

func _ready():
	$npcdialogue.hide()
	$lightkeymain.hide()
	$lightmaze3.hide()
	$bossdialogue.hide()
	
#add timer function for dialogue??
func huh():
	if $player/Area2D.overlaps_area(body):
		print("helllo")
#		_on_npcdialoguetimer_timeout()
		$npcdialogue.show()
	if $player/Area2D.overlaps_area(lightkey):
		print("omg")
		$lightkeymain.show()
#		_on_lightkeydialoguetimer_timeout()
		$lightkey.hide()
		$lightkey/CollisionShape2D.disabled=true
	if $player/Area2D.overlaps_area(darkdoor):
		godarkdoor()
	if $player/Area2D.overlaps_area(boss):
		print("helpme")
		$bossdialogue.show()


func _input(event): 
	if event is InputEventKey and event.get_scancode() == KEY_E && event.is_pressed(): 
		huh()
		print("SLDFKJS")


func godarkdoor():
	print ("thisworks!")
	if $lightkey/CollisionShape2D.disabled==true:
		$darkdoor.hide()
		$darkdoor/CollisionShape2D.disabled = true

func _process(delta):
	if Input.is_action_pressed("ui_home"):
		print("sldkfjs")
		$Lightset.show()
		$Darkset.hide()
		$inbetween.hide()
		$darkmazev1.hide()
		$darkmazev2.hide()
		$darkmazev3.hide()
		$darkmazev4.hide()
		$darkmazev5.hide()
		$darkmazeh1.hide()
		$darkmazeh2.hide()
		$darkmazeh3.hide()
		$darkmazeh4.hide()
		$darkmazev1/CollisionShape2D.disabled=true
		$darkmazev2/CollisionShape2D.disabled=true
		$darkmazev3/CollisionShape2D.disabled=true
		$darkmazev4/CollisionShape2D.disabled=true
		$darkmazev5/CollisionShape2D.disabled=true
		$inbetween/CollisionShape2D.disabled=true
		$darkmazeh1/CollisionShape2D.disabled=true
		$darkmazeh2/CollisionShape2D.disabled=true
		$darkmazeh3/CollisionShape2D.disabled=true
		$darkmazeh4/CollisionShape2D.disabled=true
		$npc.hide()
		$lightmaze1.show()
		$lightmaze2.show()
		$lightmaze3.show()
		$lightmazeh1.show()
		$lightmazeh2.show()
		$lightmaze1/CollisionShape2D.disabled=false
		$lightmaze2/CollisionShape2D.disabled=false
		$lightmaze3/CollisionShape2D.disabled=false
		$lightmazeh1/CollisionShape2D.disabled=false
		$lightmazeh2/CollisionShape2D.disabled=false




	if Input.is_action_pressed("ui_end"):
		print("sldkfjs")
		$Lightset.hide()
		$Darkset.show()
		$npc.show()
		$inbetween.show()
		$inbetween/CollisionShape2D.disabled=false
		$darkmazev1.show()
		$darkmazev2.show()
		$darkmazev3.show()
		$darkmazev4.show()
		$darkmazev5.show()
		$darkmazeh1.show()
		$darkmazeh2.show()
		$darkmazeh3.show()
		$darkmazeh4.show()
		$darkmazev1/CollisionShape2D.disabled=false
		$darkmazev2/CollisionShape2D.disabled=false
		$darkmazev3/CollisionShape2D.disabled=false
		$darkmazev4/CollisionShape2D.disabled=false
		$darkmazev5/CollisionShape2D.disabled=false
		$darkmazeh1/CollisionShape2D.disabled=false
		$darkmazeh2/CollisionShape2D.disabled=false
		$darkmazeh3/CollisionShape2D.disabled=false
		$lightmaze1.hide()
		$lightmaze2.hide()
		$lightmaze3.hide()
		$lightmazeh1.hide()
		$lightmazeh2.hide()
		$darkmazeh4/CollisionShape2D.disabled=false
		$lightmaze1/CollisionShape2D.disabled=true
		$lightmaze2/CollisionShape2D.disabled=true
		$lightmaze3/CollisionShape2D.disabled=true
		$lightmazeh1/CollisionShape2D.disabled=true
		$lightmazeh2/CollisionShape2D.disabled=true

