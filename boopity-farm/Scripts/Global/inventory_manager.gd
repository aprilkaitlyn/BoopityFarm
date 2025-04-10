extends Node

var inventory: Dictionary = Dictionary()

signal inventory_increased
signal inventory_changed

func add_collectable(collectable_name: String) -> void:
	inventory.get_or_add(collectable_name)
	if inventory[collectable_name] == null:
		inventory[collectable_name] = 1
	else:
		inventory[collectable_name] += 1
	inventory_increased.emit()
	inventory_changed.emit()

func remove_collectable(collectable_name: String) -> void:
	inventory.get_or_add(collectable_name)
	if inventory[collectable_name] == null:
		inventory[collectable_name] = 0
	else:
		#only remove an item if one exists
		if inventory[collectable_name] > 0:
			inventory[collectable_name] -= 1
		inventory_changed.emit()
