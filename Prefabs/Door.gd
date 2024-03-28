extends Node2D

@onready var sprite_component: Sprite2D = get_node("SpriteComponent")
@onready var interact_component: InteractComponent = get_node("InteractComponent")

@export var door_shut_sprite: Texture2D
@export var door_open_sprite: Texture2D

@export var door_open: bool:
	get:
		return door_open
	set(value):
		if value:
			sprite_component.texture = door_open_sprite
		else:
			sprite_component.texture = door_shut_sprite
		door_open = value
		
@export var shadow: Node
		
func _ready():
	door_open = false
	shadow.show()

func _on_interact_component_area_entered(area):
	if !door_open:
		door_open = true
		if shadow:
			shadow.queue_free()
