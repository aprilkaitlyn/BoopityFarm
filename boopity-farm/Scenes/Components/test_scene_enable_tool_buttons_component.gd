extends Node

#designed to allow us to test tools in test scenes that dont have the Marlow intro

func _ready() -> void:
	call_deferred("enable_tool_buttons")
	
func enable_tool_buttons() -> void:
	ToolManager.enable_tool_button(DataTypes.Tools.TillGround)
	ToolManager.enable_tool_button(DataTypes.Tools.WaterCrops)
	ToolManager.enable_tool_button(DataTypes.Tools.PlantCorn)
	ToolManager.enable_tool_button(DataTypes.Tools.PlantTomato)
