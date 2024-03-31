class_name DialogText extends RichTextLabel

@export var next_arrow: AnimatedSprite2D

signal next_message
var quit: bool

#listens for the enter key to show the next message
func _process(delta):
	if Input.is_action_just_pressed("Interact"):
		next_message.emit()

#recieves an array of messages and displays them one at a time
func show_messages(messages: Array[String]) -> void:
	quit = false
	next_arrow.hide()
	self.visible_characters = 0
	self.text = ""
	
	for m in range(messages.size()):
		var message = messages[m]
		self.text = message
		next_arrow.hide()
		for i in range(message.length()+1):
			if quit: return
			self.visible_characters = i
			await get_tree().create_timer(0.075).timeout
		if m < messages.size() - 1:
			next_arrow.show()
			next_arrow.play()
			next_arrow.frame = 0
			await next_message

func end_dialog() -> void:
	quit = true
	self.text = ""
	next_arrow.hide()
	next_arrow.stop()

