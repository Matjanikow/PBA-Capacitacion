extends Node2D
var speed = 500

func _ready():
	pass

func _process(delta):
	if Input.is_action_pressed("Izq"):
		position.x -= speed * delta
	if Input.is_action_pressed("Der"):
		position.x += speed * delta
#Este codigo es para que no se nos escape de la pantalla:
	position.x = clamp(position.x, 0, get_viewport_rect().size.x)
