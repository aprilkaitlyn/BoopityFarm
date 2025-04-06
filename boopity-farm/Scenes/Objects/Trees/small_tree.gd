extends Sprite2D

@onready var hurt_component: HurtComponent = $HurtComponent
@onready var damage_component: DamageComponent = $DamageComponent

var log_scene = preload("res://Scenes/Objects/Trees/log.tscn")

func _ready() -> void:
	hurt_component.hurt.connect(on_hurt)
	damage_component.max_damage_reached.connect(on_max_damage_reached)
	
func on_hurt(hit_damage: int) -> void:
	damage_component.apply_damage(hit_damage)
	#shakey shakey
	material.set_shader_parameter("shake_intensity", 0.8)
	#shake 1 second then stop
	await get_tree().create_timer(1.0).timeout
	material.set_shader_parameter("shake_intensity", 0.0)


func on_max_damage_reached() -> void:
	#deferred adds the log scene to the next frame
	call_deferred("add_log_scene")
	print("max damage reached")
	#removes the item from the map
	queue_free()

func add_log_scene() -> void:
	var log_instance = log_scene.instantiate() as Node2D
	log_instance.global_position = global_position
	#add the scene to the parent of the tree node
	get_parent().add_child(log_instance)
