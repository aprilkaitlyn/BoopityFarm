extends Panel

@onready var animated_sprite_2d: AnimatedSprite2D = $Emote/AnimatedSprite2D
@onready var emote_idle_timer: Timer = $EmoteIdleTimer

var idle_emotes: Array = ["emote_1_idle", "emote_2_smile", "emote_3_earwave", "emote_4_blink"]

func _ready() -> void:
	animated_sprite_2d.play("emote_1_idle")
	
	GameDialogueManager.feed_the_animals.connect(on_feed_the_animals)
	InventoryManager.inventory_increased.connect(on_inventory_increased)

func play_emote(animation: String) -> void:
	animated_sprite_2d.play(animation)

func _on_emote_idle_timer_timeout() -> void:
	#every 5 sec a random emote out of the 4 in the array will play
	var index = randi_range(0,3)
	var emote = idle_emotes[index]
	
	animated_sprite_2d.play(emote)

func on_feed_the_animals() -> void:
	animated_sprite_2d.play("emote_6_kiss")
	
func on_inventory_increased() -> void:
	animated_sprite_2d.play("emote_7_excited")
