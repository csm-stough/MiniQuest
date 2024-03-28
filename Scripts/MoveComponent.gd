class_name MoveComponent extends Node2D

var moving: bool

#kicks off a new coroutine that moves the character in the given direction
func move(direction: Vector2i, time: float) -> void:
	if !moving:
		moving = true
		var tweener = get_tree().create_tween()
		await tweener.tween_property(get_parent(), "global_position", global_position + (direction as Vector2), time).finished
		moving = false

