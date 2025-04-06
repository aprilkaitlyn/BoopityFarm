class_name NodeState
extends Node

#this is what will be called by the state nodes, overriden in the state_machine script
@warning_ignore("unused_signal")
signal transition 


func _on_process(_delta : float) -> void:
	pass


func _on_physics_process(_delta : float) -> void:
	pass


func _on_next_transitions() -> void:
	pass


func _on_enter() -> void:
	pass


func _on_exit() -> void:
	pass
