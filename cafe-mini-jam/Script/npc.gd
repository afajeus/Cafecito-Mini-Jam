extends Area2D

const DIALGUE_1 = preload("uid://yhl2sn6ugsku")

var Si_Daniela_cerca = false

func _process(delta: float) -> void:
	if Si_Daniela_cerca and Input.is_action_just_pressed("ui_accept"):
			DialogueManager.show_dialogue_balloon(DIALGUE_1)

func _on_area_entered(area: Area2D) -> void:
	Si_Daniela_cerca = true
	pass # Replace with function body.


func _on_area_exited(area: Area2D) -> void:
		Si_Daniela_cerca = false
	# Replace with function body.
