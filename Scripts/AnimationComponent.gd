class_name AnimationComponent extends Node2D

@onready var animated_sprite: AnimatedSprite2D = get_node("AnimatedSprite2D")

func set_sprite_frames(sprite_frames: SpriteFrames) -> void:
	animated_sprite.sprite_frames = sprite_frames

func set_animation(animation_name: String) -> void:
	animated_sprite.play(animation_name)
