class_name PlayerCharacter extends Character

@export var dialog_text: RichTextLabel

func _process(delta):
	if Input.is_action_pressed("north"):
		move(Vector2i(0, -32))
	if Input.is_action_pressed("east"):
		move(Vector2i(32, 0))
	if Input.is_action_pressed("south"):
		move(Vector2i(0, 32))
	if Input.is_action_pressed("west"):
		move(Vector2i(-32, 0))

