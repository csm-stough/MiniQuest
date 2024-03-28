class_name InteractComponent extends Area2D

var still_here: bool

func _on_area_entered(area):
	if area.get_parent() is PlayerCharacter:
		var dialog_text: RichTextLabel = area.get_parent().dialog_text
		var message = get_parent().message
		var msg: String
		
		still_here = true
		
		for i in range(message.length()):
			if still_here:
				msg += message[i]
				await get_tree().create_timer(0.05).timeout
				dialog_text.text = msg
			else:
				dialog_text.text = ""
				return
		
func _on_area_exited(area):
	if area.get_parent() is PlayerCharacter:
		still_here = false
		area.get_parent().dialog_text.text = ""
