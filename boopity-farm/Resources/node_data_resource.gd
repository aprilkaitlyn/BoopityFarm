class_name NodeDataResource
extends Resource

@export var global_position: Vector2
@export var node_path: NodePath
@export var parent_node_path: NodePath

#even tho these arent built in functions we're starting them w an underscore bc they will be overridden elsewhere
func _save_data(node: Node2D) -> void:
	global_position = node.global_position
	node_path = node.get_path()
	
	var parent_node = node.get_parent()
	
	if parent_node != null:
		parent_node_path = parent_node.get_path()
		
func _load_data(window: Window) -> void:
	pass
