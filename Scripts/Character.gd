class_name Character extends Node2D

@onready var move_component: MoveComponent = get_node("MoveComponent")
@onready var animation_component: AnimationComponent = get_node("AnimationComponent")
@onready var tilemap_interface_component: TilemapInterfaceComponent = get_node("TilemapInterfaceComponent")

@export_group("Animations")
@export var sprite_frames: SpriteFrames

@export_group("Movement Properties")
@export var move_time: float

@export_group("Misc")
@export var tilemap: TileMap


func _ready():
	animation_component.set_sprite_frames(sprite_frames)
	animation_component.set_animation("idle")
	tilemap_interface_component.tilemap = self.tilemap
	
	
#Component Top Level Functions
func move(direction: Vector2i) -> void:
	if !tilemap_interface_component.get_collision(global_position + (direction as Vector2)):
		move_component.move(direction, move_time)
