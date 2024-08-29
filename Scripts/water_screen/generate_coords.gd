extends Node2D

@export var randX: int = 0
@export var randY: int = 0
@export var stage: int = 1
@export var diff: int = 0
@export var baseRange = 100

func _init():
	randomize()
	baseRange = baseRange + (50*diff)
	randX = randi_range(0, baseRange)
	randY = randi_range(0, baseRange)

func _process(delta: float) -> void:
	if (stage == 2):
		var yEdit = get_node("RootContainer/MarginContainer/CoordinatesContainer/YContainer/YEdit")
		var xEdit = get_node("RootContainer/MarginContainer/CoordinatesContainer/XContainer/XEdit")
		yEdit.editable = true
		xEdit.editable = false
