extends KinematicBody2D

export (int) var speed = 400

var velocity = Vector2()
func get_input():
    velocity = Vector2()
    if Input.is_action_pressed('ui_right'):
        $AnimatedSprite.animation = "right"
        velocity.x += 1
    if Input.is_action_pressed('ui_left'):
        $AnimatedSprite.animation = "left"
        velocity.x -= 1
    if Input.is_action_pressed('ui_down'):
        $AnimatedSprite.animation = "down"
        velocity.y += 1
    if Input.is_action_pressed('ui_up'):
        $AnimatedSprite.animation = "up"
        velocity.y -= 1
    velocity = velocity.normalized() * speed

    if velocity.length() > 0:
        velocity = velocity.normalized() * speed
        $AnimatedSprite.play()
    else:
        $AnimatedSprite.stop()
	
func _physics_process(delta):
    get_input()
    velocity = move_and_slide(velocity)

#
#
#
