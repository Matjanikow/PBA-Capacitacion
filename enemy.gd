extends Node2D
@onready var world: Node = $".."
@onready var animation_player: AnimationPlayer = $"../AnimationPlayer"

var speed = 500
func _process(delta):
	position.y += speed * delta

func meFui():
	position.y = 0
	world.score += 1

func _on_area_2d_area_entered(area):
	animation_player.play("game_over")
