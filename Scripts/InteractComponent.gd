class_name InteractComponent extends Area2D

func _on_area_entered(area):
	if area.get_parent() is PlayerCharacter:
		area.get_parent().dialog_text.show_messages(get_parent().messages)
		
func _on_area_exited(area):
	if area.get_parent() is PlayerCharacter:
		area.get_parent().dialog_text.end_dialog()
