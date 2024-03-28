class_name NPC extends Node2D

@onready var animation_component: AnimationComponent = get_node("AnimationComponent")

@export var sprite_frames: SpriteFrames
@export_multiline var message: String

func _ready():
	animation_component.set_sprite_frames(sprite_frames)
	animation_component.set_animation("idle")
