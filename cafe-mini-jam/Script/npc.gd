extends Area2D

const DIALGUE_1 = preload("uid://yhl2sn6ugsku")
var Si_Daniela_cerca = false


func _ready() -> void:
	DialogueManager.dialogue_started.connect(_on_dialogue_started)
	DialogueManager.dialogue_ended.connect(_on_dialogue_ended)


func _process(_delta: float) -> void:
	if Si_Daniela_cerca and Input.is_action_just_pressed("ui_accept") and not GameManager.Si_Dialogue_Activo:
			DialogueManager.show_dialogue_balloon(DIALGUE_1)
		


func _on_area_entered(_area: Area2D) -> void:
	Si_Daniela_cerca = true
	pass # Replace with function body.



func _on_area_exited(_area: Area2D) -> void:
		Si_Daniela_cerca = false
	# Replace with function body.
	
func _on_dialogue_started(dialogue):
	GameManager.Si_Dialogue_Activo = true
	
func _on_dialogue_ended(dialogue):
	await get_tree().create_timer(0.1).timeout
	GameManager.Si_Dialogue_Activo = false
