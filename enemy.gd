extends Node2D
@onready var world: Node = $".."
@onready var animation_player: AnimationPlayer = $"../AnimationPlayer"
@export var speed = 500
func _physics_process(delta):
	position.y += speed * delta

func meFui():
	position.y = 0
	randomize()
	position.x = randi_range(0, get_viewport_rect().size.x)
	world.score += 1

func _on_area_2d_area_entered(area):
	if area.get_parent().is_in_group("player"):
		animation_player.play("game_over")
