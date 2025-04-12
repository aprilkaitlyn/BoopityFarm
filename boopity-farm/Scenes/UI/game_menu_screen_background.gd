extends Node2D

#in order for our flipped NPCs to stay flipped scene must be created before we freeze it
func _ready() -> void:
	call_deferred("set_scene_process_mode")
	
func set_scene_process_mode() -> void:
	process_mode = Node.PROCESS_MODE_DISABLED
