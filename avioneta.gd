extends Node2D
var speed = 500

func _process(delta):
	moverse(delta)
	#if position.x < 0:
		#position.x = get_viewport_rect().size.x
	#if position.x > get_viewport_rect().size.x:
		#position.x = 0
	position.x = clamp(position.x, 0, get_viewport_rect().size.x)
	
	
func moverse(delta):
	if Input.is_action_pressed("Izq"):
		position.x -= speed * delta
	if Input.is_action_pressed("Der"):
		position.x += speed * delta
